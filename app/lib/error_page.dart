import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF5350), // Couleur de fond rouge
      appBar: AppBar(
        title: const Text('Erreur'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Ajoutez la logique ici si nécessaire
              },
              child: Image.asset(
                'assets/error.png', // Assurez-vous d'ajouter votre logo d'erreur dans ce répertoire
                height: 100, // Ajustez la taille de l'image si nécessaire
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Une erreur est survenue',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
