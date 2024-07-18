import 'package:flutter/material.dart';
import 'opinion_page.dart';

class NfcAwaitInsideLocked extends StatefulWidget {
  @override
  _NfcAwaitInsideLockedState createState() => _NfcAwaitInsideLockedState();
}

class _NfcAwaitInsideLockedState extends State<NfcAwaitInsideLocked> {
  bool isLocked = true;

  void toggleLock() {
    setState(() {
      isLocked = !isLocked;
    });
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Êtes-vous sûr de vouloir libérer le toilette ?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Non'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Oui'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OpinionPage()),
                );
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
      backgroundColor: const Color(0xFF5AA6FF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: toggleLock,
                child: Image.asset(
                  isLocked ? 'assets/lock.png' : 'assets/unlocked.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Appuyez sur le verrou pour verrouiller et déverrouiller la porte',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showConfirmationDialog(context),
              child: const Text('Sortir'),
            ),
          ],
        ),
      ),
    );
  }
}
