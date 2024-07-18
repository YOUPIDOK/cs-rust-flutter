import 'package:app/src/constants/paddings.dart';
import 'package:flutter/material.dart';

class AccountReviewHistoryScreen extends StatefulWidget {
  const AccountReviewHistoryScreen({super.key});

  @override
  State<AccountReviewHistoryScreen> createState() => _AccountReviewHistoryScreenState();
}

class _AccountReviewHistoryScreenState extends State<AccountReviewHistoryScreen> {
  List<Map<String, dynamic>> reviews = [
    {
      'title': 'WC Vieux Lyon',
      'subtitle': '7 rue des Fleurs 37000 Tours',
      'starCount': 5
    },
    {
      'title': 'WC Debourg',
      'subtitle': '5 rue Victor Hugo 69000 Lyon',
      'starCount': 4
    },
    {
      'title': 'WC Villeurbanne',
      'subtitle': '5 rue Victor Hugo 69100 Villeurbanne',
      'starCount': 2
    },
  ];

  void _editReview(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int newStarCount = reviews[index]['starCount'];
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Modifier l\'avis'),
              content: Row(
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
      appBar: AppBar(title: const Text('Mes avis')),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromRGBO(144, 39, 142, 0.8),
              Color.fromRGBO(3, 144, 235, 0.8),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: Paddings.page,
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
        ),
      ),
    );
  }

  Widget cardWithRating(String title, String subtitle, int starCount,
      VoidCallback onEdit, VoidCallback onDelete) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
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
                  children: List.generate(
                      5,
                      (index) => index < starCount
                          ? const Icon(
                              Icons.star,
                              color: Colors.amber,
                            )
                          : const Icon(
                              Icons.star_border,
                              color: Colors.amber,
                            )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: onEdit,
                child: const Text('Modifier'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: onDelete,
                child: const Text('Supprimer'),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
