import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playstation_5_games/app/utils/try_parse_date_time.dart';

part 'try_parse_date_time_test.freezed.dart';
part 'try_parse_date_time_test.g.dart';

void main() {
  group('Validate fromJson function', () {
    final inputsToExpected = <String?, DateTime?>{
      null: null,
      '': null,
      '2024-01-19': DateTime(2024, 1, 19),
      '2024-01-19 13:15:59': DateTime(2024, 1, 19, 13, 15, 59),
      '2024-01-19T14:02:14Z': DateTime(2024, 1, 19, 21, 02, 14),
    };

    inputsToExpected.forEach((input, expected) {
      test('fromJson $input to $expected', () {
        final json = <String, String?>{
          'publishedAt': input,
        };

        final model = DummyModel.fromJson(json);

        expect(model.publishedAt, expected);
      });
    });
  });

  group('Validate toJson function', () {
    final inputsToExpected = <DateTime?, Map<String, String?>>{
      null: {
        'publishedAt': null,
      },
      DateTime(2024, 1, 19): {
        'publishedAt': '2024-01-18T17:00:00.000Z',
      },
      DateTime(2024, 1, 19, 13, 15, 59): {
        'publishedAt': '2024-01-19T06:15:59.000Z',
      },
      DateTime(2024, 1, 19, 21, 02, 14): {
        'publishedAt': '2024-01-19T14:02:14.000Z',
      },
    };

    inputsToExpected.forEach((input, expected) {
      test('toJson $input to $expected', () {
        final model = DummyModel(publishedAt: input);

        expect(model.toJson(), expected);
      });
    });
  });
}

@freezed
class DummyModel with _$DummyModel {
  const factory DummyModel({
    @TryParseDateTime() DateTime? publishedAt,
  }) = _DummyModel;

  factory DummyModel.fromJson(Map<String, dynamic> json) =>
      _$DummyModelFromJson(json);
}
