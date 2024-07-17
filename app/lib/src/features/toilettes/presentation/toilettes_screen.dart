import 'package:app/src/features/toilettes/data/toilettes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToilettesScreen extends ConsumerStatefulWidget {
  const ToilettesScreen({super.key});

  @override
  ConsumerState<ToilettesScreen> createState() => _ToilettesScreenState();
}

class _ToilettesScreenState extends ConsumerState<ToilettesScreen> {
  @override
  Widget build(BuildContext context) {
    final allToilettes = ref.watch(allToiletteProvider).value;

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(234, 234, 234, 1),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 70, left: 10, right: 10),
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
                    child: ListView.builder(
                  itemCount: allToilettes!.length,
                  itemBuilder: (context, index) {
                    return Text(allToilettes![index].name);
                  },
                ))
              ],
            ),
          )),
    );
  }
}
