import 'package:app/src/api/graphql/graphql_client.dart';
import 'package:app/src/app.dart';
import 'package:app/src/constants/api.dart';
import 'package:app/src/exceptions/async_error_logger.dart';
import 'package:app/src/exceptions/error_logger.dart';
import 'package:app/src/features/shared_preferences/data/shared_preferences_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Shared Preferences
  final prefs = await StreamingSharedPreferences.instance;

  // Init Graphql Client
  final graphqlClientBazzile = await createClient(tokenStore: prefs, endpoint: graphqlApiUri);

// * Create ProviderContainer with any required overrides
  final container = ProviderContainer(
    overrides: [
      graphqlClientProvider.overrideWithValue(graphqlClientBazzile),
      sharedPreferencesRepositoryProvider.overrideWithValue(prefs),
    ],
    observers: [AsyncErrorLogger()],
  );

  // Error logger
  final errorLogger = container.read(errorLoggerProvider);
  // * Register error handlers. For more info, see:
  // * https://docs.flutter.dev/testing/errors
  registerErrorHandlers(errorLogger);

  // * Entry point of the app
  runApp(UncontrolledProviderScope(
    container: container,
    child: const MyApp(),
  ));
}

void registerErrorHandlers(ErrorLogger errorLogger) {
  // * Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    errorLogger.logError(details.exception, details.stack);
  };
  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    errorLogger.logError(error, stack);
    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_outlined,
              color: Color(0xFFe0115f),
              size: 100,
            ),
            Text(kReleaseMode ? 'Oops... something went wrong,\n try to reload the app !' : details.exception.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  };
}
