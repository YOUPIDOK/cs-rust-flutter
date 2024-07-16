import 'package:app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp.router(
        themeAnimationCurve: Curves.easeInOut,
        routerConfig: goRouter,
        restorationScopeId: 'app',
        onGenerateTitle: (BuildContext context) => "Toilettes Flemard",
        builder: (context, child) => child ?? const SizedBox(),
      ),
    );
  }
}
