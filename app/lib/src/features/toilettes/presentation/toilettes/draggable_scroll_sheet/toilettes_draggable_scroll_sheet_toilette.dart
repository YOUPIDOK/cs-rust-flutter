import 'package:app/src/common_widgets/utils/async/async_value_widget.dart';
import 'package:app/src/constants/app_sizes.dart';
import 'package:app/src/constants/paddings.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ToilettesDraggableScrollSheetToilette extends ConsumerStatefulWidget {
  const ToilettesDraggableScrollSheetToilette({super.key, required this.toilette});

  final GToilettesData_getToilets toilette;

  @override
  ConsumerState<ToilettesDraggableScrollSheetToilette> createState() => _ToilettesDraggableScrollSheetToiletteState();
}

class _ToilettesDraggableScrollSheetToiletteState extends ConsumerState<ToilettesDraggableScrollSheetToilette> {
  bool actionRunning = false;
  GToiletteSubscriptionData_doorStateUpdated? toiletteVisited;

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
                                  ref
                                      .read(toilettesRepositoryProvider)
                                      .toggleLockState(GtoggleLockStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());
                                },
                                child: Icon(actionRunning ? Icons.check : Icons.nfc, size: 100),
                              ),
                              gapH24,
                              FilledButton(
                                  onPressed: () async {
                                    ref
                                        .read(toilettesRepositoryProvider)
                                        .updateDoorState(GupdateDoorStateVars((b) => b..id = toilette.id.toBuilder()).toBuilder());

                                    if (toiletteVisited != null) {
                                      await showDialog(
                                          context: context,
                                          useRootNavigator: true,
                                          builder: (context) {
                                            return ToilettesDraggableScrollSheetToiletteRating(toilette: toiletteVisited!);
                                          });
                                    }

                                    setState(() {
                                      toiletteVisited = null;
                                    });

                                    if (context.mounted) context.pop();
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
                                        toiletteVisited = toilette;
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

class ToilettesDraggableScrollSheetToiletteRating extends ConsumerStatefulWidget {
  const ToilettesDraggableScrollSheetToiletteRating({super.key, required this.toilette});

  final GToiletteSubscriptionData_doorStateUpdated toilette;

  @override
  ConsumerState<ToilettesDraggableScrollSheetToiletteRating> createState() => _ToilettesDraggableScrollSheetToiletteRatingState();
}

class _ToilettesDraggableScrollSheetToiletteRatingState extends ConsumerState<ToilettesDraggableScrollSheetToiletteRating> {
  double rating = 5;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Merci d\'avoir visité notre toilette'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('N\'hésite pas à laisser un commentaire pour aider les autres utilisateurs'),
          Text(rating.toString()),
          gapH24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ['🤮', '🙁', '😐', '🙂', '😍']
                .asMap()
                .entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() {
                        rating = e.key.toDouble() + 1;
                      });
                    },
                    child: Text(
                      e.value,
                      style: TextStyle(fontSize: rating == e.key.toDouble() + 1 ? Sizes.p32 : Sizes.p24),
                    ),
                  ),
                )
                .toList(),
          ),
          FilledButton(
              onPressed: () async {
                final res = await ref.read(toilettesRepositoryProvider).createComment(GtoiletteCreateCommentVars((b) => b
                  ..input.toiletId = widget.toilette.id.toBuilder()
                  ..input.note = rating
                  ..input.comment = '').toBuilder());

                setState(() {
                  rating = 5;
                });

                if (context.mounted) {
                  if (res.data != null) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Merci pour votre note')));
                    context.pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Erreur lors de la note')));
                  }
                }
              },
              child: const Text('Laisser la note')),
          gapH8,
          FilledButton(onPressed: context.pop, child: const Text('Retour')),
        ],
      ),
    );
  }
}
