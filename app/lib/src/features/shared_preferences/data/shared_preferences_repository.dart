import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

part 'shared_preferences_repository.g.dart';

@Riverpod(keepAlive: true)
StreamingSharedPreferences sharedPreferencesRepository(SharedPreferencesRepositoryRef ref) {
  // * Override this in the main method
  throw UnimplementedError();
}