import 'package:flutter/material.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  authenticate() async {
    // parameters here just for the sake of the question
    var uri = Uri.parse('http://127.0.0.1:8081/realms/iw_cs_dev');
    var clientId = 'app';
    var scopes = List<String>.of(['openid', 'profile']);
    var port = 4200;

    var issuer = await Issuer.discover(uri);
    var client = Client(issuer, clientId);

    urlLauncher(String url) async {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    var authenticator = Authenticator(client, scopes: scopes, port: port, urlLancher: urlLauncher);

    var c = await authenticator.authorize();
    
    closeInAppWebView();

    var token = await c.getTokenResponse();
    print(token);
    return token;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Auth',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            FilledButton(onPressed: authenticate, child: const Text("login"))
          ],
        ),
      ),
    );
  }
}
