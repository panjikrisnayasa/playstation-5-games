// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TryParseDateTime()
  DateTime? get released => throw _privateConstructorUsedError;
  bool get tba => throw _privateConstructorUsedError;
  String get backgroundImage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get ratingTop => throw _privateConstructorUsedError;
  List<Rating> get ratings => throw _privateConstructorUsedError;
  int get ratingsCount => throw _privateConstructorUsedError;
  int get reviewsTextCount => throw _privateConstructorUsedError;
  int get added => throw _privateConstructorUsedError;
  int get metacritic => throw _privateConstructorUsedError;
  int get playtime => throw _privateConstructorUsedError;
  int get suggestionsCount => throw _privateConstructorUsedError;
  @TryParseDateTime()
  DateTime? get updated => throw _privateConstructorUsedError;
  EsrbRating get esrbRating => throw _privateConstructorUsedError;
  List<Platform> get platforms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int id,
      String slug,
      String name,
      @TryParseDateTime() DateTime? released,
      bool tba,
      String backgroundImage,
      double rating,
      int ratingTop,
      List<Rating> ratings,
      int ratingsCount,
      int reviewsTextCount,
      int added,
      int metacritic,
      int playtime,
      int suggestionsCount,
      @TryParseDateTime() DateTime? updated,
      EsrbRating esrbRating,
      List<Platform> platforms});

  $EsrbRatingCopyWith<$Res> get esrbRating;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? released = freezed,
    Object? tba = null,
    Object? backgroundImage = null,
    Object? rating = null,
    Object? ratingTop = null,
    Object? ratings = null,
    Object? ratingsCount = null,
    Object? reviewsTextCount = null,
    Object? added = null,
    Object? metacritic = null,
    Object? playtime = null,
    Object? suggestionsCount = null,
    Object? updated = freezed,
    Object? esrbRating = null,
    Object? platforms = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tba: null == tba
          ? _value.tba
          : tba // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingTop: null == ratingTop
          ? _value.ratingTop
          : ratingTop // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsTextCount: null == reviewsTextCount
          ? _value.reviewsTextCount
          : reviewsTextCount // ignore: cast_nullable_to_non_nullable
              as int,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int,
      metacritic: null == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as int,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as int,
      suggestionsCount: null == suggestionsCount
          ? _value.suggestionsCount
          : suggestionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      esrbRating: null == esrbRating
          ? _value.esrbRating
          : esrbRating // ignore: cast_nullable_to_non_nullable
              as EsrbRating,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<Platform>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EsrbRatingCopyWith<$Res> get esrbRating {
    return $EsrbRatingCopyWith<$Res>(_value.esrbRating, (value) {
      return _then(_value.copyWith(esrbRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String slug,
      String name,
      @TryParseDateTime() DateTime? released,
      bool tba,
      String backgroundImage,
      double rating,
      int ratingTop,
      List<Rating> ratings,
      int ratingsCount,
      int reviewsTextCount,
      int added,
      int metacritic,
      int playtime,
      int suggestionsCount,
      @TryParseDateTime() DateTime? updated,
      EsrbRating esrbRating,
      List<Platform> platforms});

  @override
  $EsrbRatingCopyWith<$Res> get esrbRating;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
    Object? released = freezed,
    Object? tba = null,
    Object? backgroundImage = null,
    Object? rating = null,
    Object? ratingTop = null,
    Object? ratings = null,
    Object? ratingsCount = null,
    Object? reviewsTextCount = null,
    Object? added = null,
    Object? metacritic = null,
    Object? playtime = null,
    Object? suggestionsCount = null,
    Object? updated = freezed,
    Object? esrbRating = null,
    Object? platforms = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tba: null == tba
          ? _value.tba
          : tba // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingTop: null == ratingTop
          ? _value.ratingTop
          : ratingTop // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsTextCount: null == reviewsTextCount
          ? _value.reviewsTextCount
          : reviewsTextCount // ignore: cast_nullable_to_non_nullable
              as int,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as int,
      metacritic: null == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as int,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as int,
      suggestionsCount: null == suggestionsCount
          ? _value.suggestionsCount
          : suggestionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      esrbRating: null == esrbRating
          ? _value.esrbRating
          : esrbRating // ignore: cast_nullable_to_non_nullable
              as EsrbRating,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<Platform>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GameImpl implements _Game {
  const _$GameImpl(
      {this.id = 0,
      this.slug = '',
      this.name = '',
      @TryParseDateTime() this.released,
      this.tba = false,
      this.backgroundImage = '',
      this.rating = 0,
      this.ratingTop = 0,
      final List<Rating> ratings = const [],
      this.ratingsCount = 0,
      this.reviewsTextCount = 0,
      this.added = 0,
      this.metacritic = 0,
      this.playtime = 0,
      this.suggestionsCount = 0,
      @TryParseDateTime() this.updated,
      this.esrbRating = const EsrbRating(),
      final List<Platform> platforms = const []})
      : _ratings = ratings,
        _platforms = platforms;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String name;
  @override
  @TryParseDateTime()
  final DateTime? released;
  @override
  @JsonKey()
  final bool tba;
  @override
  @JsonKey()
  final String backgroundImage;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int ratingTop;
  final List<Rating> _ratings;
  @override
  @JsonKey()
  List<Rating> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  @JsonKey()
  final int ratingsCount;
  @override
  @JsonKey()
  final int reviewsTextCount;
  @override
  @JsonKey()
  final int added;
  @override
  @JsonKey()
  final int metacritic;
  @override
  @JsonKey()
  final int playtime;
  @override
  @JsonKey()
  final int suggestionsCount;
  @override
  @TryParseDateTime()
  final DateTime? updated;
  @override
  @JsonKey()
  final EsrbRating esrbRating;
  final List<Platform> _platforms;
  @override
  @JsonKey()
  List<Platform> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, released: $released, tba: $tba, backgroundImage: $backgroundImage, rating: $rating, ratingTop: $ratingTop, ratings: $ratings, ratingsCount: $ratingsCount, reviewsTextCount: $reviewsTextCount, added: $added, metacritic: $metacritic, playtime: $playtime, suggestionsCount: $suggestionsCount, updated: $updated, esrbRating: $esrbRating, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.tba, tba) || other.tba == tba) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingTop, ratingTop) ||
                other.ratingTop == ratingTop) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            (identical(other.reviewsTextCount, reviewsTextCount) ||
                other.reviewsTextCount == reviewsTextCount) &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.metacritic, metacritic) ||
                other.metacritic == metacritic) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime) &&
            (identical(other.suggestionsCount, suggestionsCount) ||
                other.suggestionsCount == suggestionsCount) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.esrbRating, esrbRating) ||
                other.esrbRating == esrbRating) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      slug,
      name,
      released,
      tba,
      backgroundImage,
      rating,
      ratingTop,
      const DeepCollectionEquality().hash(_ratings),
      ratingsCount,
      reviewsTextCount,
      added,
      metacritic,
      playtime,
      suggestionsCount,
      updated,
      esrbRating,
      const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {final int id,
      final String slug,
      final String name,
      @TryParseDateTime() final DateTime? released,
      final bool tba,
      final String backgroundImage,
      final double rating,
      final int ratingTop,
      final List<Rating> ratings,
      final int ratingsCount,
      final int reviewsTextCount,
      final int added,
      final int metacritic,
      final int playtime,
      final int suggestionsCount,
      @TryParseDateTime() final DateTime? updated,
      final EsrbRating esrbRating,
      final List<Platform> platforms}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  @TryParseDateTime()
  DateTime? get released;
  @override
  bool get tba;
  @override
  String get backgroundImage;
  @override
  double get rating;
  @override
  int get ratingTop;
  @override
  List<Rating> get ratings;
  @override
  int get ratingsCount;
  @override
  int get reviewsTextCount;
  @override
  int get added;
  @override
  int get metacritic;
  @override
  int get playtime;
  @override
  int get suggestionsCount;
  @override
  @TryParseDateTime()
  DateTime? get updated;
  @override
  EsrbRating get esrbRating;
  @override
  List<Platform> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl();

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  String toString() {
    return 'Rating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RatingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating() = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;
}

EsrbRating _$EsrbRatingFromJson(Map<String, dynamic> json) {
  return _EsrbRating.fromJson(json);
}

/// @nodoc
mixin _$EsrbRating {
  int get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EsrbRatingCopyWith<EsrbRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EsrbRatingCopyWith<$Res> {
  factory $EsrbRatingCopyWith(
          EsrbRating value, $Res Function(EsrbRating) then) =
      _$EsrbRatingCopyWithImpl<$Res, EsrbRating>;
  @useResult
  $Res call({int id, String slug, String name});
}

/// @nodoc
class _$EsrbRatingCopyWithImpl<$Res, $Val extends EsrbRating>
    implements $EsrbRatingCopyWith<$Res> {
  _$EsrbRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EsrbRatingImplCopyWith<$Res>
    implements $EsrbRatingCopyWith<$Res> {
  factory _$$EsrbRatingImplCopyWith(
          _$EsrbRatingImpl value, $Res Function(_$EsrbRatingImpl) then) =
      __$$EsrbRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String slug, String name});
}

/// @nodoc
class __$$EsrbRatingImplCopyWithImpl<$Res>
    extends _$EsrbRatingCopyWithImpl<$Res, _$EsrbRatingImpl>
    implements _$$EsrbRatingImplCopyWith<$Res> {
  __$$EsrbRatingImplCopyWithImpl(
      _$EsrbRatingImpl _value, $Res Function(_$EsrbRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_$EsrbRatingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EsrbRatingImpl implements _EsrbRating {
  const _$EsrbRatingImpl({this.id = 0, this.slug = '', this.name = ''});

  factory _$EsrbRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$EsrbRatingImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'EsrbRating(id: $id, slug: $slug, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EsrbRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EsrbRatingImplCopyWith<_$EsrbRatingImpl> get copyWith =>
      __$$EsrbRatingImplCopyWithImpl<_$EsrbRatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EsrbRatingImplToJson(
      this,
    );
  }
}

abstract class _EsrbRating implements EsrbRating {
  const factory _EsrbRating(
      {final int id, final String slug, final String name}) = _$EsrbRatingImpl;

  factory _EsrbRating.fromJson(Map<String, dynamic> json) =
      _$EsrbRatingImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$EsrbRatingImplCopyWith<_$EsrbRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Platform _$PlatformFromJson(Map<String, dynamic> json) {
  return _Platform.fromJson(json);
}

/// @nodoc
mixin _$Platform {
  PlatformData get platform => throw _privateConstructorUsedError;
  @TryParseDateTime()
  DateTime? get releasedAt => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformCopyWith<Platform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformCopyWith<$Res> {
  factory $PlatformCopyWith(Platform value, $Res Function(Platform) then) =
      _$PlatformCopyWithImpl<$Res, Platform>;
  @useResult
  $Res call(
      {PlatformData platform,
      @TryParseDateTime() DateTime? releasedAt,
      Requirements requirements});

  $PlatformDataCopyWith<$Res> get platform;
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$PlatformCopyWithImpl<$Res, $Val extends Platform>
    implements $PlatformCopyWith<$Res> {
  _$PlatformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? releasedAt = freezed,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as PlatformData,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlatformDataCopyWith<$Res> get platform {
    return $PlatformDataCopyWith<$Res>(_value.platform, (value) {
      return _then(_value.copyWith(platform: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequirementsCopyWith<$Res> get requirements {
    return $RequirementsCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlatformImplCopyWith<$Res>
    implements $PlatformCopyWith<$Res> {
  factory _$$PlatformImplCopyWith(
          _$PlatformImpl value, $Res Function(_$PlatformImpl) then) =
      __$$PlatformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlatformData platform,
      @TryParseDateTime() DateTime? releasedAt,
      Requirements requirements});

  @override
  $PlatformDataCopyWith<$Res> get platform;
  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$PlatformImplCopyWithImpl<$Res>
    extends _$PlatformCopyWithImpl<$Res, _$PlatformImpl>
    implements _$$PlatformImplCopyWith<$Res> {
  __$$PlatformImplCopyWithImpl(
      _$PlatformImpl _value, $Res Function(_$PlatformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? releasedAt = freezed,
    Object? requirements = null,
  }) {
    return _then(_$PlatformImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as PlatformData,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlatformImpl implements _Platform {
  const _$PlatformImpl(
      {this.platform = const PlatformData(),
      @TryParseDateTime() this.releasedAt,
      this.requirements = const Requirements()});

  factory _$PlatformImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformImplFromJson(json);

  @override
  @JsonKey()
  final PlatformData platform;
  @override
  @TryParseDateTime()
  final DateTime? releasedAt;
  @override
  @JsonKey()
  final Requirements requirements;

  @override
  String toString() {
    return 'Platform(platform: $platform, releasedAt: $releasedAt, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, platform, releasedAt, requirements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformImplCopyWith<_$PlatformImpl> get copyWith =>
      __$$PlatformImplCopyWithImpl<_$PlatformImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformImplToJson(
      this,
    );
  }
}

abstract class _Platform implements Platform {
  const factory _Platform(
      {final PlatformData platform,
      @TryParseDateTime() final DateTime? releasedAt,
      final Requirements requirements}) = _$PlatformImpl;

  factory _Platform.fromJson(Map<String, dynamic> json) =
      _$PlatformImpl.fromJson;

  @override
  PlatformData get platform;
  @override
  @TryParseDateTime()
  DateTime? get releasedAt;
  @override
  Requirements get requirements;
  @override
  @JsonKey(ignore: true)
  _$$PlatformImplCopyWith<_$PlatformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlatformData _$PlatformDataFromJson(Map<String, dynamic> json) {
  return _PlatformData.fromJson(json);
}

/// @nodoc
mixin _$PlatformData {
  int get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformDataCopyWith<PlatformData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformDataCopyWith<$Res> {
  factory $PlatformDataCopyWith(
          PlatformData value, $Res Function(PlatformData) then) =
      _$PlatformDataCopyWithImpl<$Res, PlatformData>;
  @useResult
  $Res call({int id, String slug, String name});
}

/// @nodoc
class _$PlatformDataCopyWithImpl<$Res, $Val extends PlatformData>
    implements $PlatformDataCopyWith<$Res> {
  _$PlatformDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformDataImplCopyWith<$Res>
    implements $PlatformDataCopyWith<$Res> {
  factory _$$PlatformDataImplCopyWith(
          _$PlatformDataImpl value, $Res Function(_$PlatformDataImpl) then) =
      __$$PlatformDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String slug, String name});
}

/// @nodoc
class __$$PlatformDataImplCopyWithImpl<$Res>
    extends _$PlatformDataCopyWithImpl<$Res, _$PlatformDataImpl>
    implements _$$PlatformDataImplCopyWith<$Res> {
  __$$PlatformDataImplCopyWithImpl(
      _$PlatformDataImpl _value, $Res Function(_$PlatformDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_$PlatformDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlatformDataImpl implements _PlatformData {
  const _$PlatformDataImpl({this.id = 0, this.slug = '', this.name = ''});

  factory _$PlatformDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'PlatformData(id: $id, slug: $slug, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformDataImplCopyWith<_$PlatformDataImpl> get copyWith =>
      __$$PlatformDataImplCopyWithImpl<_$PlatformDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformDataImplToJson(
      this,
    );
  }
}

abstract class _PlatformData implements PlatformData {
  const factory _PlatformData(
      {final int id,
      final String slug,
      final String name}) = _$PlatformDataImpl;

  factory _PlatformData.fromJson(Map<String, dynamic> json) =
      _$PlatformDataImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PlatformDataImplCopyWith<_$PlatformDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Requirements _$RequirementsFromJson(Map<String, dynamic> json) {
  return _Requirements.fromJson(json);
}

/// @nodoc
mixin _$Requirements {
  String get minimum => throw _privateConstructorUsedError;
  String get recommended => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequirementsCopyWith<Requirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequirementsCopyWith<$Res> {
  factory $RequirementsCopyWith(
          Requirements value, $Res Function(Requirements) then) =
      _$RequirementsCopyWithImpl<$Res, Requirements>;
  @useResult
  $Res call({String minimum, String recommended});
}

/// @nodoc
class _$RequirementsCopyWithImpl<$Res, $Val extends Requirements>
    implements $RequirementsCopyWith<$Res> {
  _$RequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = null,
    Object? recommended = null,
  }) {
    return _then(_value.copyWith(
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequirementsImplCopyWith<$Res>
    implements $RequirementsCopyWith<$Res> {
  factory _$$RequirementsImplCopyWith(
          _$RequirementsImpl value, $Res Function(_$RequirementsImpl) then) =
      __$$RequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String minimum, String recommended});
}

/// @nodoc
class __$$RequirementsImplCopyWithImpl<$Res>
    extends _$RequirementsCopyWithImpl<$Res, _$RequirementsImpl>
    implements _$$RequirementsImplCopyWith<$Res> {
  __$$RequirementsImplCopyWithImpl(
      _$RequirementsImpl _value, $Res Function(_$RequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = null,
    Object? recommended = null,
  }) {
    return _then(_$RequirementsImpl(
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RequirementsImpl implements _Requirements {
  const _$RequirementsImpl({this.minimum = '', this.recommended = ''});

  factory _$RequirementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequirementsImplFromJson(json);

  @override
  @JsonKey()
  final String minimum;
  @override
  @JsonKey()
  final String recommended;

  @override
  String toString() {
    return 'Requirements(minimum: $minimum, recommended: $recommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequirementsImpl &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minimum, recommended);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      __$$RequirementsImplCopyWithImpl<_$RequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequirementsImplToJson(
      this,
    );
  }
}

abstract class _Requirements implements Requirements {
  const factory _Requirements(
      {final String minimum, final String recommended}) = _$RequirementsImpl;

  factory _Requirements.fromJson(Map<String, dynamic> json) =
      _$RequirementsImpl.fromJson;

  @override
  String get minimum;
  @override
  String get recommended;
  @override
  @JsonKey(ignore: true)
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
