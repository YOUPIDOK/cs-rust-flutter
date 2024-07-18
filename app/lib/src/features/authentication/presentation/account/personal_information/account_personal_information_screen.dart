import 'package:app/src/constants/paddings.dart';
import 'package:flutter/material.dart';

class AccountPersonalInformationScreen extends StatefulWidget {
  const AccountPersonalInformationScreen({super.key});

  @override
  State<AccountPersonalInformationScreen> createState() => _AccountPersonalInformationScreenState();
}

class _AccountPersonalInformationScreenState extends State<AccountPersonalInformationScreen> {
  bool _isEditing = false;

  final _formData = {
    'firstName': 'John',
    'lastName': 'Doe',
    'email': 'johndoe@example.com',
    'gender': 'Male',
    'address': '123 Main St, Anytown, USA',
    'postalCode': '12345',
    'mobileNumber': '07 123 456 789',
  };

  List<Widget> _buildDisplay() {
    return [
      const Center(
        child: CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: 50),
        ),
      ),
      const SizedBox(height: 16),
      Text('First Name: ${_formData['firstName']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Last Name: ${_formData['lastName']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Email: ${_formData['email']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Gender: ${_formData['gender']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Address: ${_formData['address']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Postal Code: ${_formData['postalCode']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      Text('Phone Number: ${_formData['mobileNumber']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      const SizedBox(height: 16),
      Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: () => setState(() => _isEditing = true),
          child: const Text('Modifier'),
        ),
      ),
    ];
  }

  List<Widget> _buildEditForm() {
    return [
      const Center(
        child: CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: 50),
        ),
      ),
      const SizedBox(height: 16),
      TextFormField(
        initialValue: _formData['firstName'],
        decoration: const InputDecoration(labelText: 'First Name'),
        onChanged: (value) => _formData['firstName'] = value,
      ),
      TextFormField(
        initialValue: _formData['lastName'],
        decoration: const InputDecoration(labelText: 'Last Name'),
        onChanged: (value) => _formData['lastName'] = value,
      ),
      TextFormField(
        initialValue: _formData['email'],
        decoration: const InputDecoration(labelText: 'Email'),
        onChanged: (value) => _formData['email'] = value,
      ),
      TextFormField(
        initialValue: _formData['gender'],
        decoration: const InputDecoration(labelText: 'Gender'),
        onChanged: (value) => _formData['gender'] = value,
      ),
      TextFormField(
        initialValue: _formData['address'],
        decoration: const InputDecoration(labelText: 'Address'),
        onChanged: (value) => _formData['address'] = value,
      ),
      TextFormField(
        initialValue: _formData['postalCode'],
        decoration: const InputDecoration(labelText: 'Postal Code'),
        onChanged: (value) => _formData['postalCode'] = value,
      ),
      TextFormField(
        initialValue: _formData['mobileNumber'],
        decoration: const InputDecoration(labelText: 'Phone Number'),
        onChanged: (value) => _formData['mobileNumber'] = value,
      ),
      const SizedBox(height: 16),
      Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: () => setState(() => _isEditing = false),
          child: const Text('Enregistrer'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Information')),
      body: SingleChildScrollView(
        child: Padding(
          padding: Paddings.page,
          child: Card(
            child: Padding(
              padding: Paddings.button,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _isEditing ? _buildEditForm() : _buildDisplay(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
