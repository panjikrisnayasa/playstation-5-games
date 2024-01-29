import 'package:flutter/material.dart';
import 'package:playstation_5_games/features/game_list/game_list_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playstation 5 Games',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(color: Colors.blue),
        useMaterial3: true,
      ),
      home: const GameListScreen(),
    );
  }
}
