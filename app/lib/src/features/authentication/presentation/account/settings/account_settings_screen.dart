import 'package:flutter/material.dart';
import 'package:app/src/features/authentication/presentation/account/settings/personal_information/personal_information.dart';
import 'package:app/src/features/authentication/presentation/account/settings/payment_method/payment_method.dart';
import 'package:app/src/features/authentication/presentation/account/settings/review_history/review_history.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

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
                    side: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PersonalInformation()),
                      );
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.face),
                        title: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Information personnel'),
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
                        MaterialPageRoute(builder: (context) => const PaymentMethod()),
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
                    borderRadius: BorderRadius.circular(5)
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const ReviewHistory()),
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