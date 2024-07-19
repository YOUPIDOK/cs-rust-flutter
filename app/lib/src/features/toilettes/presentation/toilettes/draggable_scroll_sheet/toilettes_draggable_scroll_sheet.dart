import 'dart:developer';

import 'package:app/src/common_widgets/utils/async/async_value_widget.dart';
import 'package:app/src/constants/app_sizes.dart';
import 'package:app/src/constants/paddings.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:app/src/features/toilettes/presentation/toilettes/toilettes_notifier.dart';
import 'package:app/src/features/toilettes/utils/toilettes_in_coordinate_bounds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ToilettesDraggableScrollSheet extends ConsumerWidget {
  const ToilettesDraggableScrollSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toilettesFuture = ref.watch(toilettesFutureProvider);
    final coordinateBounds = ref.watch(toilettesNotifierProvider.select((value) => value.coordinateBounds));

    showToilette(BuildContext context, GToilettesData_getToilets toilette) => showModalBottomSheet(
        context: context,
        showDragHandle: true,
        builder: (BuildContext context) => ToilettesDraggableScrollSheetToilette(
              toilette: toilette,
            ));

    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      snap: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Sizes.p20),
              topRight: Radius.circular(Sizes.p20),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: CustomScrollView(
            controller: scrollController,
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverAppBar(
                  primary: false,
                  pinned: true,
                  collapsedHeight: 80,
                  title: Column(
                    children: [
                      gapH12,
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      gapH12,
                      AsyncValueWidget(
                        value: toilettesFuture,
                        data: (res) {
                          final toilettes = res.data?.getToilets;

                          if (toilettes == null || coordinateBounds == null) {
                            return Text(
                              '0 Toilettes ${coordinateBounds.toString()}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800],
                              ),
                            );
                          }

                          final toilettesVisible = toilettesInCoordinateBounds(toilettes, coordinateBounds);

                          return Text(
                            '${toilettesVisible.length} Toilettes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800],
                            ),
                          );
                        },
                      ),
                    ],
                  )),
              AsyncValueSliverWidget(
                  value: toilettesFuture,
                  data: (res) {
                    final toilettes = res.data?.getToilets;

                    if (toilettes == null || coordinateBounds == null) return const SliverToBoxAdapter();

                    final toilettesVisible = toilettesInCoordinateBounds(toilettes, coordinateBounds);

                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => showToilette(context, toilettesVisible[index]),
                            child: Card(
                                child: Padding(
                              padding: Paddings.input,
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  gapW12,
                                  Expanded(
                                    child: Text(toilettesVisible[index].name),
                                  ),
                                  gapW12,
                                  Icon(toilettesVisible[index].isMaintenance ? Icons.build : Icons.check),
                                ],
                              ),
                            )),
                          );
                        },
                        childCount: toilettesVisible.length,
                      ),
                    );
                  }),
            ],
          ),
        );
      },
    );
  }
}

class ToilettesDraggableScrollSheetToilette extends ConsumerStatefulWidget {
  const ToilettesDraggableScrollSheetToilette({super.key, required this.toilette});

  final GToilettesData_getToilets toilette;

  @override
  ConsumerState<ToilettesDraggableScrollSheetToilette> createState() => _ToilettesDraggableScrollSheetToiletteState();
}

class _ToilettesDraggableScrollSheetToiletteState extends ConsumerState<ToilettesDraggableScrollSheetToilette> {
  bool actionRunning = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(toiletteSubscriptionStreamProvider(widget.toilette.id.value), (_, state) {
      setState(() {
        actionRunning = false;
      });
    });
    final toiletteSubscription = ref.watch(toiletteSubscriptionStreamProvider(widget.toilette.id.value));

    return Container(
        width: double.infinity,
        padding: Paddings.page,
        child: AsyncValueWidget(
            value: toiletteSubscription,
            data: (res) {
              final toilette = res.data?.doorStateUpdated;
              if (toilette == null) return const SizedBox();
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: toilette.isMaintenance
                      ? [
                          const Row(
                            children: [
                              Icon(Icons.warning, size: Sizes.p24),
                              gapW12,
                              Text('Maintenance', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                            ],
                          ),
                          gapH8,
                          const Text('Cette toilette est en maintenance, veuillez en choisir une autre'),
                          gapH24,
                          FilledButton(onPressed: context.pop, child: const Text('En choisir une autre')),
                        ]
                      : toilette.doorIsOpen
                          ? [
                              const Row(
                                children: [
                                  Icon(Icons.lock_open_sharp, size: Sizes.p24),
                                  gapW12,
                                  Text('Toilette ouverte', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                                ],
                              ),
                              gapH8,
                              const Text('Cette toilette est actuellement ouverte, tu peux y accéder, referme la porte en scannant le lecteur NFC intérieur'),
                              gapH24,
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    actionRunning = true;
                                  });
                                  await ref
                                      .read(toilettesRepositoryProvider)
                                      .updateDoorState(GupdateDoorStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                  // Wait 3 seconds
                                  await Future.delayed(const Duration(seconds: 3));
                                  await ref
                                      .read(toilettesRepositoryProvider)
                                      .toggleLockState(GtoggleLockStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                },
                                child: Icon(actionRunning ? Icons.check : Icons.nfc, size: 100),
                              ),
                              gapH24,
                              FilledButton(
                                  onPressed: () {
                                    ref
                                        .read(toilettesRepositoryProvider)
                                        .updateDoorState(GupdateDoorStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());

                                    context.pop();
                                  },
                                  child: const Text('Retour')),
                            ]
                          : toilette.isLocked
                              ? [
                                  const Row(
                                    children: [
                                      Icon(Icons.lock_clock, size: Sizes.p24),
                                      gapW12,
                                      Text('Toilette verrouillée', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  gapH8,
                                  const Text(
                                      'Cette toilette est actuellement verrouillée, approche ton téléphone du lecteur NFC intérieur pour la déverrouiller'),
                                  gapH24,
                                  GestureDetector(
                                    onTap: () async {
                                      setState(() {
                                        actionRunning = true;
                                      });
                                      Future.delayed(const Duration(seconds: 5)).then((onValue) async {
                                        // Show avis form
                                      });
                                      await ref
                                          .read(toilettesRepositoryProvider)
                                          .toggleLockState(GtoggleLockStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                      // Wait 3 seconds
                                      await Future.delayed(const Duration(seconds: 3));
                                      ref
                                          .read(toilettesRepositoryProvider)
                                          .updateDoorState(GupdateDoorStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                    },
                                    child: Icon(actionRunning ? Icons.check : Icons.nfc, size: 100),
                                  ),
                                  gapH24,
                                  FilledButton(onPressed: context.pop, child: const Text('Retour')),
                                ]
                              : [
                                  Row(
                                    children: [
                                      const Icon(Icons.door_back_door_outlined, size: Sizes.p24),
                                      gapW12,
                                      Expanded(
                                        child: Text("Tu veux acceder au toilette n°${toilette.name} ?",
                                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                                      ),
                                    ],
                                  ),
                                  gapH8,
                                  const Text("Place ton telephone sur le lecteur NFC juste devant le toilette", style: TextStyle(fontSize: 16)),
                                  gapH24,
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        actionRunning = true;
                                      });
                                      ref
                                          .read(toilettesRepositoryProvider)
                                          .updateDoorState(GupdateDoorStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                    },
                                    child: Icon(actionRunning ? Icons.check : Icons.nfc, size: 100),
                                  ),
                                  gapH24,
                                  FilledButton(onPressed: context.pop, child: const Text('Retour')),
                                ]);
            }));
  }
}
