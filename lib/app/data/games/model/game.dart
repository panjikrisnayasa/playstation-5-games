// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playstation_5_games/app/utils/try_parse_date_time.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Game({
    @Default(0) int id,
    @Default('') String slug,
    @Default('') String name,
    @TryParseDateTime() DateTime? released,
    @Default(false) bool tba,
    @Default('') String backgroundImage,
    @Default(0) double rating,
    @Default(0) int ratingTop,
    @Default([]) List<Rating> ratings,
    @Default(0) int ratingsCount,
    @Default(0) int reviewsTextCount,
    @Default(0) int added,
    @JsonKey(name: 'metacritic') @Default(0) int metaCritic,
    @Default(0) int playtime,
    @Default(0) int suggestionsCount,
    @TryParseDateTime() DateTime? updated,
    @Default(EsrbRating()) EsrbRating esrbRating,
    @Default([]) List<Platform> platforms,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating() = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class EsrbRating with _$EsrbRating {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EsrbRating({
    @Default(0) int id,
    @Default('') String slug,
    @Default('') String name,
  }) = _EsrbRating;

  factory EsrbRating.fromJson(Map<String, dynamic> json) =>
      _$EsrbRatingFromJson(json);
}

@freezed
class Platform with _$Platform {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Platform({
    @Default(PlatformData()) PlatformData platform,
    @TryParseDateTime() DateTime? releasedAt,
    @Default(Requirements()) Requirements requirements,
  }) = _Platform;

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);
}

@freezed
class PlatformData with _$PlatformData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlatformData({
    @Default(0) int id,
    @Default('') String slug,
    @Default('') String name,
  }) = _PlatformData;

  factory PlatformData.fromJson(Map<String, dynamic> json) =>
      _$PlatformDataFromJson(json);
}

@freezed
class Requirements with _$Requirements {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Requirements({
    @Default('') String minimum,
    @Default('') String recommended,
  }) = _Requirements;

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);
}