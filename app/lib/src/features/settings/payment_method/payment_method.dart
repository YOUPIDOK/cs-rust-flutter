import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paiement')),
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
  String _selectedMethod = 'XXXX-XXXX-XXXX-1234';
  List<Map<String, String>> cards = [
    {'number': 'XXXX-XXXX-XXXX-1234', 'expiry': '12/24'}
  ];
  bool _isAddingNewCard = false;

  final TextEditingController _cardController = TextEditingController();
  DateTime? _selectedExpiryDate;

  Future<void> _selectExpiryDate(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(now.year, now.month),
      firstDate: DateTime(now.year),
      lastDate: DateTime(now.year + 10),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            colorScheme: ColorScheme.light(
              primary: Colors.blue,
              secondary: Colors.blue,
            ),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedExpiryDate) {
      setState(() {
        _selectedExpiryDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            ...cards.map((card) {
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.credit_card),
                      title: Text(card['number']!),
                      subtitle: Text('Expire le ${card['expiry']}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            cards.remove(card);
                          });
                        },
                      ),
                    ),
                    RadioListTile<String>(
                      title: const Text('Utiliser cette carte'),
                      value: card['number'] ?? '',
                      groupValue: _selectedMethod,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedMethod = value!;
                        });
                      },
                    ),
                  ],
                ),
              );
            }).toList(),
            const Divider(),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Communication des données'),
                  ),
                  RadioListTile<String>(
                    title: const Text(
                        'Autoriser la commercialisation de vos données personnelles comme moyen de paiement pour utiliser notre application'),
                    value: 'data_sharing',
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
            if (_isAddingNewCard)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _cardController,
                      decoration: const InputDecoration(
                        labelText: 'Nouveau numéro de carte',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: _selectedExpiryDate == null
                            ? 'Date d\'expiration'
                            : 'Expire le ${DateFormat('MM/yy').format(_selectedExpiryDate!)}',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () => _selectExpiryDate(context),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_cardController.text.isNotEmpty &&
                              _selectedExpiryDate != null) {
                            final formattedDate = DateFormat('MM/yy').format(_selectedExpiryDate!);
                            cards.add({
                              'number': _cardController.text,
                              'expiry': formattedDate,
                            });
                            _cardController.clear();
                            _selectedExpiryDate = null;
                            _isAddingNewCard = false;
                          }
                        });
                      },
                      child: const Text('Ajouter la carte'),
                    ),
                  ],
                ),
              ),
          ],
        ),
        Positioned(
          bottom: 90,
          right: 20,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _isAddingNewCard = true;
              });
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}