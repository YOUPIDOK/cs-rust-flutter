import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'nfc_await_outside.dart'; // Remplacez par le chemin de votre fichier initial

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFC App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NfcAwaitOutside(),
    );
  }
}
