import 'package:app/src/common_widgets/utils/async/async_value_widget.dart';
import 'package:app/src/constants/app_sizes.dart';
import 'package:app/src/constants/paddings.dart';
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:app/src/features/toilettes/presentation/toilettes/toilettes_notifier.dart';
import 'package:app/src/features/toilettes/utils/toilettes_in_coordinate_bounds.dart';
import 'package:app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ToilettesDraggableScrollSheet extends ConsumerWidget {
  const ToilettesDraggableScrollSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toilettesFuture = ref.watch(toilettesFutureProvider);
    final coordinateBounds = ref.watch(toilettesNotifierProvider.select((value) => value.coordinateBounds));

    showToilette(BuildContext context, GToilettesData_getToilets toilette) {
      if (toilette.isMaintenance) {
        return showModalBottomSheet(
            context: context,
            showDragHandle: true,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                padding: Paddings.page,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Maintenance', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    gapH12,
                    const Text('Cette toilette est en maintenance, veuillez en choisir une autre'),
                    gapH24,
                    FilledButton(onPressed: context.pop, child: const Text('En choisir une autre')),
                  ],
                ),
              );
            });
      }
      context.goNamed(AppRoute.toilette.name, pathParameters: {'id': toilette.id.toString()});
    }

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
