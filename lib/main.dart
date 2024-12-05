import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/presentation/app_root/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: _EagerInitialization(child: AppRoot())));
}

class _EagerInitialization extends StatefulHookConsumerWidget {
  const _EagerInitialization({super.key, required this.child});

  final Widget child;

  @override
  _EagerInitializationState createState() => _EagerInitializationState();
}

class _EagerInitializationState extends ConsumerState<_EagerInitialization> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
