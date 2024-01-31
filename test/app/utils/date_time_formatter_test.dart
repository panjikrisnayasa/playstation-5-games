import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/utils/date_time_formatter.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  MockBuildContext? mockContext;

  setUp(() {
    mockContext = MockBuildContext();
  });

  tearDown(() {
    mockContext = null;
  });

  group('Validate yMMMd function', () {
    final inputsToExpected = <DateTime?, String>{
      null: '-',
      DateTime(2024, 1, 19, 20, 57): 'Jan 19, 2024',
      DateTime(0): 'Jan 1, 0',
    };

    inputsToExpected.forEach((input, expected) {
      test('yMMMd $input to $expected', () {
        expect(input.yMMMd(mockContext!), expected);
      });
    });
  });

  group('Validate Hm function', () {
    final inputsToExpected = <DateTime?, String>{
      null: '-',
      DateTime(2024, 1, 19, 20, 57): '20:57',
      DateTime(0): '00:00',
    };

    inputsToExpected.forEach((input, expected) {
      test('Hm $input to $expected', () {
        expect(input.Hm(mockContext!), expected);
      });
    });
  });

  group('Validate yMMMdHm function', () {
    final inputsToExpected = <DateTime?, String>{
      null: '-',
      DateTime(2024, 1, 19, 20, 57): 'Jan 19, 2024 20:57',
      DateTime(0): 'Jan 1, 0 00:00',
    };

    inputsToExpected.forEach((input, expected) {
      test('yMMMdHm $input to $expected', () {
        expect(input.yMMMdHm(mockContext!), expected);
      });
    });
  });

  group('Validate formatDateToString getter', () {
    final inputsToExpected = <DateTime?, String>{
      null: '-',
      DateTime(2024, 1, 19, 20, 57): '2024-01-19',
      DateTime(0): '0000-01-01',
    };

    inputsToExpected.forEach((input, expected) {
      test('formatDateToString $input to $expected', () {
        expect(input.formatDateToString, expected);
      });
    });
  });
}
