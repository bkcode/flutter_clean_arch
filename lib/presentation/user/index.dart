import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/providers/index.dart';

part 'index.g.dart';

@riverpod
Future<User> getUserInfoCase(Ref ref) async {
  final user =
      await ref.read(userUseCaseNotifierProvider).getUserinfo('JasonYHZ');
  return user;
}

@RoutePage()
class UserScreen extends HookConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var activeUser = ref.watch(getUserInfoCaseProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(getUserInfoCaseProvider.future),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: switch (activeUser) {
                  AsyncValue<User>(:final valueOrNull?) =>
                    Text(valueOrNull.toString()),
                  AsyncValue(:final error?) => Text('Error: $error'),
                  _ => const CircularProgressIndicator(),
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
