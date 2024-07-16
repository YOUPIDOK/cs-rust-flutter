import 'package:flutter/material.dart';

class ConnexionView extends StatefulWidget {
  const ConnexionView({super.key});

  @override
  State<ConnexionView> createState() => _ConnexionViewState();
}

class _ConnexionViewState extends State<ConnexionView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1, 1),
            colors: <Color>[
              Color.fromRGBO(144, 39, 142, 1),
              Color.fromRGBO(3, 144, 235, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.webp',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Email',
                                prefixIcon: const Icon(Icons.person),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: 'Mot de passe',
                                prefixIcon: const Icon(Icons.lock),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Je n\'ai pas de compte',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255))),
                                    ),
                                  ),
                                  child: const Text('Connexion'),
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
