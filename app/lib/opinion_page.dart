import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/opinion_provider.dart';
import 'nfc_await_outside.dart'; // Importez votre page NfcAwaitOutside ici

class OpinionPage extends ConsumerStatefulWidget {
  @override
  _OpinionPageState createState() => _OpinionPageState();
}

class _OpinionPageState extends ConsumerState<OpinionPage> {
  int _rating = 0;
  final TextEditingController _commentController = TextEditingController();

  void _submitOpinion() {
    if (_rating == 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erreur'),
            content: const Text('Veuillez sélectionner une note.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    if (_commentController.text.length < 3) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erreur'),
            content: const Text('Veuillez saisir au moins 3 caractères dans votre avis.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    if (_commentController.text.length > 250) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erreur'),
            content: const Text('Votre avis ne peut pas dépasser 250 caractères.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    // Remplacez ces valeurs par des valeurs appropriées
    const int toiletId = 1;
    const int userId = 1;

    ref.read(opinionProvider.notifier).setOpinion(
      toiletId,
      userId,
      _rating,
      _commentController.text,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        final opinion = ref.read(opinionProvider);
        return AlertDialog(
          title: const Text('Avis soumis'),
          content: Text('Note: ${opinion?.rating}\nAvis: ${opinion?.comment}'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => NfcAwaitOutside()),
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
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => NfcAwaitOutside()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Veuillez sélectionner une note et écrire un avis:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    setState(() {
                      _rating = index + 1;
                    });
                  },
                );
              }),
            ),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: 'Votre avis',
                counterText: '${_commentController.text.length}/250', // Affiche le nombre de caractères
              ),
              maxLines: 4,
              maxLength: 250, // Limite le nombre maximum de caractères
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitOpinion,
              child: const Text('Terminé'),
            ),
          ],
        ),
      ),
    );
  }
}
