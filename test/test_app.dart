import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    super.key,
    this.navigatorKey,
    this.overrides = const [],
    this.navigatorObservers = const [],
    required this.child,
  });

  final List<Override> overrides;

  final List<NavigatorObserver> navigatorObservers;

  final Widget child;

  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        ...overrides,
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        navigatorObservers: navigatorObservers,
        home: Material(child: child),
      ),
    );
  }
}
