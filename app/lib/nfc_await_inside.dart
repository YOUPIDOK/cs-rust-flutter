import 'package:flutter/material.dart';
import 'nfc_await_inside_locked.dart';

class NfcAwaitInside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF81C784), // Définir la couleur de fond ici
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Veuillez patienter'),
                        content: const Text('Chargement en cours'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop(); // Fermer le dialog
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NfcAwaitInsideLocked()),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Image.asset(
                  'assets/unlocked.png', // Chemin de votre logo
                  height: 100, // Ajustez la taille de l'image si nécessaire
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Bienvenue à l\'intérieur',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Vous pouvez entrer !',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Scanner la borne dispo à l’intérieur',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
