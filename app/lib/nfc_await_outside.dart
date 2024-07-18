import 'package:flutter/material.dart';
import 'nfc_await_inside.dart';
import 'error_page.dart'; // Assurez-vous d'importer votre fichier error_page.dart

class NfcAwaitOutside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                              MaterialPageRoute(builder: (context) => NfcAwaitInside()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Image.asset(
                'assets/contactless.png', // Assurez-vous d'ajouter votre logo dans ce répertoire
                height: 100, // Ajustez la taille de l'image si nécessaire
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Approcher votre téléphone de la borne pour accéder aux toilettes',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ErrorPage()),
                );
              },
              child: const Text('Accès apage de test Erreur (a supprimer)'),
            ),
          ],
        ),
      ),
    );
  }
}
