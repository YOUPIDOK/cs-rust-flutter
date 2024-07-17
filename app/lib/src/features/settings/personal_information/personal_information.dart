import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  bool _isEditing = false;

  final _formData = {
    'firstName': 'John',
    'lastName': 'Doe',
    'email': 'johndoe@example.com',
    'gender': 'Male',
    'address': '123 Main St, Anytown, USA',
    'phoneNumber': '07 123 456 789',
  };

  Widget _buildDisplayCard() {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('First Name: ${_formData['firstName']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Last Name: ${_formData['lastName']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Email: ${_formData['email']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Gender: ${_formData['gender']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Address: ${_formData['address']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Phone Number: ${_formData['phoneNumber']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () => setState(() => _isEditing = true),
                child: const Text('Modifier'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditForm() {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                initialValue: _formData['phoneNumber'],
                decoration: const InputDecoration(labelText: 'Phone Number'),
                onChanged: (value) => _formData['phoneNumber'] = value,
              ),
              ElevatedButton(
                onPressed: () => setState(() => _isEditing = false),
                child: const Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Information')),
      body: Center(
        child: _isEditing ? _buildEditForm() : _buildDisplayCard(),
      ),
    );
  }
}