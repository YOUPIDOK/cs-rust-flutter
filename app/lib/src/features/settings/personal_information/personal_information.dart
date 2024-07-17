import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Peronal Information')),
      body: Center(
        child: Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('First Name: John'),
                  Text('Last Name: Doe'),
                  Text('Email: johndoe@example.com'),
                  Text('Gender: Male'),
                  Text('Address: 123 Main St, Anytown, USA'),
                  Text('Phone Number: 07 123 456 789'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}