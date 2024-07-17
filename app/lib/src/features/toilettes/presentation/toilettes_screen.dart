import 'package:app/src/common_widgets/utils/async/async_value_widget.dart';
import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToilettesScreen extends ConsumerWidget {
  const ToilettesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toilettesFuture = ref.watch(toilettesFutureProvider);

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(234, 234, 234, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Rechercher une toillette',
                    prefixIcon: Icon(Icons.arrow_back),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                    child: AsyncValueWidget(
                  value: toilettesFuture,
                  data: (res) {
                    final toilettes = res.data?.getToiletProche;
                    print(toilettes);
                    if (toilettes != null) {
                      return ListView.builder(
                        itemCount: toilettes.length,
                        itemBuilder: (context, index) {
                          return Text(toilettes[index].name);
                        },
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ))
              ],
            ),
          )),
    );
  }
}
