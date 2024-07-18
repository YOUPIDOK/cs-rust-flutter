import 'package:app/src/common_widgets/utils/async/async_value_widget.dart';
import 'package:app/src/constants/paddings.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToiletteScreen extends ConsumerWidget {
  const ToiletteScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toilettesFuture = ref.watch(toilettesFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Toilette'),
      ),
      body: Padding(
        padding: Paddings.page,
        child: AsyncValueWidget(
          value: toilettesFuture,
          data: (res) {
            final toilettes = res.data?.getToilets;
            final toilette = toilettes?.firstWhere((element) => element.id.toString() == id);
        
            if (toilette == null) return const SizedBox();
        
            return Table(
              children: [
                TableRow(
                  children: [
                    const Text('ID'),
                    Text(toilette.id.toString()),
                  ],
                ),
                TableRow(
                  children: [
                    const Text('Company ID'),
                    Text(toilette.companiesId.toString()),
                  ],
                ),
                TableRow(
                  children: [
                    const Text('Name'),
                    Text(toilette.name),
                  ],
                ),
                TableRow(
                  children: [
                    const Text('Latitude'),
                    Text(toilette.lat.toString()),
                  ],
                ),
                TableRow(
                  children: [
                    const Text('Longitude'),
                    Text(toilette.long.toString()),
                  ],
                ),
                TableRow(
                  children: [
                    const Text('Maintenance'),
                    Text(toilette.isMaintenance ? 'Maintenance' : 'Not Maintenance'),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
