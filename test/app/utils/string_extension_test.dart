import 'package:flutter_test/flutter_test.dart';
import 'package:playstation_5_games/app/utils/string_extension.dart';

void main() {
  group('Validate orDash getter', () {
    final inputsToExpected = <String?, String>{
      'This is not an empty String': 'This is not an empty String',
      '-': '-',
      '': '-',
      null: '-',
    };

    inputsToExpected.forEach((input, expected) {
      test('orDash $input to $expected', () {
        expect(input.orDash, expected);
      });
    });
  });
}
