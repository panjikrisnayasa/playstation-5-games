import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockRoute extends Mock implements Route {}

class MockGamesRepository extends Mock implements GamesRepository {}
