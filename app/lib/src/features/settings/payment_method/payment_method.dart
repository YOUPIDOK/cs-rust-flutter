import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Votre moyen de paiement')),
        body: const _PaymentMethodState(),
      );
  }
}

class _PaymentMethodState extends StatefulWidget {
  const _PaymentMethodState({super.key});

  @override
  _PaymentMethodStateState createState() => _PaymentMethodStateState();
}

class _PaymentMethodStateState extends State<_PaymentMethodState> {
  String _selectedMethod = 'card';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('XXXX-XXXX-XXXX-1234'),
              subtitle: Text('Expire le 12/24'),
            ),
            RadioListTile<String>(
              title: const Text('Utiliser cette carte'),
              value: 'card',
              groupValue: _selectedMethod,
              onChanged: (String? value) {
                setState(() {
                  _selectedMethod = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}