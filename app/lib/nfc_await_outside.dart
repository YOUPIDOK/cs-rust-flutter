import 'package:flutter/material.dart';
import 'nfc_await_inside.dart';
import 'error_page.dart'; // Assurez-vous d'importer votre fichier error_page.dart

class NfcAwaitOutside extends StatelessWidget {
  final bool payment;

  NfcAwaitOutside({this.payment = true });

  void _showPleaseWaitDialog(BuildContext context) {
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
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation d\'achat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Vous avez renseigné votre carte bleue, et payez avec celle-ci. Si vous souhaitez utiliser l'application gratuitement, vous pouvez commercialiser vos données via les paramètres de votre profil.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14), // Réduire la taille du texte
              ),
              SizedBox(height: 10),
              Text(
                "Prix: 1.99€",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop(); // Fermer le dialog de confirmation
              },
            ),
            TextButton(
              child: const Text('Confirmer'),
              onPressed: () {
                Navigator.of(context).pop(); // Fermer le dialog de confirmation
                _showPleaseWaitDialog(context); // Afficher le dialog "Veuillez patienter"
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (payment) {
                  _showConfirmationDialog(context);
                } else {
                  _showPleaseWaitDialog(context);
                }
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
              child: const Text('Accès à la page de test Erreur (à supprimer)'),
            ),
          ],
        ),
      ),
    );
  }
}
