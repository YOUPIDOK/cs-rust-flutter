import 'package:app/src/features/shared_preferences/data/shared_preferences_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

part 'auth_repository.g.dart';

extension StreamingSharedPreferencesAuth on StreamingSharedPreferences {
  static const String authTokenKey = 'authToken';

  String get token => getString(authTokenKey, defaultValue: "").getValue();

  Preference<String> get getToken => getString(authTokenKey, defaultValue: "");

  Future<bool> setToken(String? token) async {
    if (token == null) {
      return remove(authTokenKey);
    }
    return setString(authTokenKey, token);
  }
}

class AuthRepository {
  AuthRepository(this.ref);
  final Ref ref;

  Future<void> signIn() async {
    final token = await _authenticate();
    await ref.read(sharedPreferencesRepositoryProvider).setToken(token.accessToken);
  }

  Future<void> signOut() async {
    await ref.read(sharedPreferencesRepositoryProvider).setToken(null);
  }

  Future<TokenResponse> _authenticate() async {
    // parameters here just for the sake of the question
    print('${const String.fromEnvironment("http://192.168.1.120:8081")}/realms/iw_cs_dev');
    var uri = Uri.parse('${const String.fromEnvironment("http://192.168.1.120:8081")}/realms/iw_cs_dev');
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
      return null;
    }

    var authenticator = Authenticator(client, scopes: scopes, port: port, urlLancher: urlLauncher);

    var c = await authenticator.authorize();

    await closeInAppWebView();

    var token = await c.getTokenResponse();

    return token;
  }
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository(ref);
}

@Riverpod(keepAlive: true)
Stream<String> tokenStateChanges(TokenStateChangesRef ref) {
  final sharedPreferencesRepository = ref.read(sharedPreferencesRepositoryProvider);
  return sharedPreferencesRepository.getToken;
}
