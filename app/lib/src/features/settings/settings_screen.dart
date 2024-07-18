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
        appBar: AppBar(title: const Text('Paramètres')),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(1, 1),
              colors: <Color>[
                Color.fromRGBO(144, 39, 142, 0.8),
                Color.fromRGBO(3, 144, 235, 0.8),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PersonalInformation()),
                        );
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.face),
                          title: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Information'),
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
                      side: const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const PaymentMethod()),
                        );
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.credit_card),
                          title: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Paiement'),
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
                        side: const BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ReviewHistory()),
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
      ),
    );
  }
}

