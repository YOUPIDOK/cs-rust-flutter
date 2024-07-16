import 'package:flutter/material.dart';

class ToilettesScreen extends StatelessWidget {
  const ToilettesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toilettes'),
      ),
      body: const Center(
        child: Text('Toilettes'),
      ),
    );
  }
}