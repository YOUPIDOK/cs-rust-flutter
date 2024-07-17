import 'package:flutter/material.dart';
import 'package:app/src/features/settings/personal_information/personal_information.dart';
import 'package:app/src/features/settings/payment_method/payment_method.dart';
import 'package:app/src/features/settings/review_history/review_history.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PersonalInformation()),
                      );
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.face),
                        title: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Information personelle'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PaymentMethod()),
                      );
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.credit_card),
                        title: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Mode de paiement'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ReviewHistory()),
                      );
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.hotel_class),
                        title: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Historique des avis'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Center(child: Text(cardName)),
    );
  }
}