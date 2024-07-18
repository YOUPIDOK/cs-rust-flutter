import 'package:app/src/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';


class AccountPaymentMethodScreen extends StatefulWidget {
  const AccountPaymentMethodScreen({super.key});

  @override
  State<AccountPaymentMethodScreen> createState() => _AccountPaymentMethodScreenStateState();
}

class _AccountPaymentMethodScreenStateState extends State<AccountPaymentMethodScreen> {
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
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              secondary: Colors.blue,
            ),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
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
    return Scaffold(
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
        child: Padding(
          padding: Paddings.page,
          child: Stack(
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
                  }),
                  const Divider(),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('Communication des données'),
                        ),
                        RadioListTile<String>(
                          title: const Text('Autoriser la commercialisation de vos données personnelles comme moyen de paiement pour utiliser notre application'),
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
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
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
                                labelText: _selectedExpiryDate == null ? 'Date d\'expiration' : 'Expire le ${DateFormat('MM/yy').format(_selectedExpiryDate!)}',
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
                                  if (_cardController.text.isNotEmpty && _selectedExpiryDate != null) {
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
          ),
        ),
      ),
    );
  }
}
