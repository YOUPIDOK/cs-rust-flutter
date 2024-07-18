import 'package:flutter/material.dart';

class ReviewHistory extends StatelessWidget {
  const ReviewHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Votre historique des avis')),
      body: const CardExample(),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          cardWithRating('WC Vieux Lyon', '7 rue des Fleurs 37000 Tours', 5),
          cardWithRating('WC Debourg', '5 rue Victor Hugo 69000 Lyon', 4),
          cardWithRating('WC Villeurbanne', '5 rue Victor Hugo 69100 Villeurbanne', 2),
        ],
      ),
    );
  }

  Widget cardWithRating(String title, String subtitle, int starCount) {
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
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Supprimer'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}