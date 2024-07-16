import 'package:app/src/features/shared_preferences/data/shared_preferences_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

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

  Future<void> signIn(String token) async {
    await ref.read(sharedPreferencesRepositoryProvider).setToken(token);
  }

  Future<void> signOut() async {
    await ref.read(sharedPreferencesRepositoryProvider).setToken(null);
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
