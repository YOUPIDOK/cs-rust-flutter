import 'package:flutter/material.dart';

class ReviewHistory extends StatefulWidget {
  const ReviewHistory({super.key});

  @override
  _ReviewHistoryState createState() => _ReviewHistoryState();
}

class _ReviewHistoryState extends State<ReviewHistory> {
  List<Map<String, dynamic>> reviews = [
    {'title': 'WC Vieux Lyon', 'subtitle': '7 rue des Fleurs 37000 Tours', 'starCount': 5},
    {'title': 'WC Debourg', 'subtitle': '5 rue Victor Hugo 69000 Lyon', 'starCount': 4},
    {'title': 'WC Villeurbanne', 'subtitle': '5 rue Victor Hugo 69100 Villeurbanne', 'starCount': 2},
  ];

  void _editReview(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int newStarCount = reviews[index]['starCount'];
        return AlertDialog(
          title: Text('Modifier l\'avis'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (i) {
              return IconButton(
                icon: Icon(
                  i < newStarCount ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
                onPressed: () {
                  setState(() {
                    newStarCount = i + 1;
                  });
                },
              );
            }),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Sauvegarder'),
              onPressed: () {
                setState(() {
                  reviews[index]['starCount'] = newStarCount;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteReview(int index) {
    setState(() {
      reviews.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Votre historique des avis')),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(reviews.length, (index) {
            return cardWithRating(
              reviews[index]['title'],
              reviews[index]['subtitle'],
              reviews[index]['starCount'],
                  () => _editReview(index),
                  () => _deleteReview(index),
            );
          }),
        ),
      ),
    );
  }

  Widget cardWithRating(String title, String subtitle, int starCount, VoidCallback onEdit, VoidCallback onDelete) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.network(
              'https://cdn-s-www.bienpublic.com/images/F330C08A-333C-4DDB-882D-B75B5D1F3FDF/NW_raw/pour-beaucoup-de-personnes-l-idee-de-partager-cet-espace-avec-une-foule-d-inconnus-n-a-rien-de-tres-agreable-illustration-adobe-stock-1646667252.jpg',
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
            title: Text(title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subtitle),
                Row(
                  children: List.generate(5, (index) => index < starCount ? Icon(Icons.star, color: Colors.amber,) : Icon(Icons.star_border, color: Colors.amber,)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Modifier'),
                onPressed: onEdit,
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Supprimer'),
                onPressed: onDelete,
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ReviewHistory(),
  ));
}