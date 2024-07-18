import 'package:app/src/constants/app_sizes.dart';
import 'package:app/src/constants/paddings.dart';
import 'package:app/src/features/authentication/data/auth_repository.dart';
import 'package:app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logout = ref.watch(authRepositoryProvider).signOut;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1, 1),
            colors: <Color>[
              Color.fromRGBO(144, 39, 142, 0.8),
              Color.fromRGBO(3, 144, 235, 0.8),
            ],
          ),
        ),
        padding: Paddings.page,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () => context.goNamed(AppRoute.accountPersonnalInfo.name),
                child: const SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListTile(
                    leading: Icon(Icons.face),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Information personnel'),
                    ),
                  ),
                ),
              ),
            ),
            gapH12,
            Card(
              shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(5)),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () => context.goNamed(AppRoute.accountReviewHistory.name),
                child: const SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListTile(
                    leading: Icon(Icons.hotel_class),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Historique des avis'),
                    ),
                  ),
                ),
              ),
            ),
            gapH12,
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () => context.goNamed(AppRoute.accountPaymentMethod.name),
                child: const SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Paiement'),
                    ),
                  ),
                ),
              ),
            ),
            gapH12,
            OutlinedButton(onPressed: logout, child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
