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
  String get descriptionRaw => throw _privateConstructorUsedError;
  @TryParseDateTime()
  DateTime? get released => throw _privateConstructorUsedError;
  bool get tba => throw _privateConstructorUsedError;
  String get backgroundImage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get ratingTop => throw _privateConstructorUsedError;
  int get ratingsCount => throw _privateConstructorUsedError;
  int get reviewsTextCount => throw _privateConstructorUsedError;
  int get added => throw _privateConstructorUsedError;
  int get metacritic => throw _privateConstructorUsedError;
  int get playtime => throw _privateConstructorUsedError;
  int get suggestionsCount => throw _privateConstructorUsedError;
  int get userGame => throw _privateConstructorUsedError;
  @TryParseDateTime()
  DateTime? get updated => throw _privateConstructorUsedError;
  EsrbRating get esrbRating => throw _privateConstructorUsedError;
  List<Platform> get platforms => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  List<Publisher> get publishers => throw _privateConstructorUsedError;
  List<Store> get stores => throw _privateConstructorUsedError;

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
      String descriptionRaw,
      @TryParseDateTime() DateTime? released,
      bool tba,
      String backgroundImage,
      double rating,
      int ratingTop,
      int ratingsCount,
      int reviewsTextCount,
      int added,
      int metacritic,
      int playtime,
      int suggestionsCount,
      int userGame,
      @TryParseDateTime() DateTime? updated,
      EsrbRating esrbRating,
      List<Platform> platforms,
      List<Genre> genres,
      List<Publisher> publishers,
      List<Store> stores});

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
    Object? descriptionRaw = null,
    Object? released = freezed,
    Object? tba = null,
    Object? backgroundImage = null,
    Object? rating = null,
    Object? ratingTop = null,
    Object? ratingsCount = null,
    Object? reviewsTextCount = null,
    Object? added = null,
    Object? metacritic = null,
    Object? playtime = null,
    Object? suggestionsCount = null,
    Object? userGame = null,
    Object? updated = freezed,
    Object? esrbRating = null,
    Object? platforms = null,
    Object? genres = null,
    Object? publishers = null,
    Object? stores = null,
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
      descriptionRaw: null == descriptionRaw
          ? _value.descriptionRaw
          : descriptionRaw // ignore: cast_nullable_to_non_nullable
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
      userGame: null == userGame
          ? _value.userGame
          : userGame // ignore: cast_nullable_to_non_nullable
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
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      publishers: null == publishers
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<Publisher>,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
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
      String descriptionRaw,
      @TryParseDateTime() DateTime? released,
      bool tba,
      String backgroundImage,
      double rating,
      int ratingTop,
      int ratingsCount,
      int reviewsTextCount,
      int added,
      int metacritic,
      int playtime,
      int suggestionsCount,
      int userGame,
      @TryParseDateTime() DateTime? updated,
      EsrbRating esrbRating,
      List<Platform> platforms,
      List<Genre> genres,
      List<Publisher> publishers,
      List<Store> stores});

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
    Object? descriptionRaw = null,
    Object? released = freezed,
    Object? tba = null,
    Object? backgroundImage = null,
    Object? rating = null,
    Object? ratingTop = null,
    Object? ratingsCount = null,
    Object? reviewsTextCount = null,
    Object? added = null,
    Object? metacritic = null,
    Object? playtime = null,
    Object? suggestionsCount = null,
    Object? userGame = null,
    Object? updated = freezed,
    Object? esrbRating = null,
    Object? platforms = null,
    Object? genres = null,
    Object? publishers = null,
    Object? stores = null,
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
      descriptionRaw: null == descriptionRaw
          ? _value.descriptionRaw
          : descriptionRaw // ignore: cast_nullable_to_non_nullable
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
      userGame: null == userGame
          ? _value.userGame
          : userGame // ignore: cast_nullable_to_non_nullable
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
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      publishers: null == publishers
          ? _value._publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<Publisher>,
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
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
      this.descriptionRaw = '',
      @TryParseDateTime() this.released,
      this.tba = false,
      this.backgroundImage = '',
      this.rating = 0,
      this.ratingTop = 0,
      this.ratingsCount = 0,
      this.reviewsTextCount = 0,
      this.added = 0,
      this.metacritic = 0,
      this.playtime = 0,
      this.suggestionsCount = 0,
      this.userGame = 0,
      @TryParseDateTime() this.updated,
      this.esrbRating = const EsrbRating(),
      final List<Platform> platforms = const [],
      final List<Genre> genres = const [],
      final List<Publisher> publishers = const [],
      final List<Store> stores = const []})
      : _platforms = platforms,
        _genres = genres,
        _publishers = publishers,
        _stores = stores;

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
  @JsonKey()
  final String descriptionRaw;
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
  @JsonKey()
  final int userGame;
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

  final List<Genre> _genres;
  @override
  @JsonKey()
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<Publisher> _publishers;
  @override
  @JsonKey()
  List<Publisher> get publishers {
    if (_publishers is EqualUnmodifiableListView) return _publishers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publishers);
  }

  final List<Store> _stores;
  @override
  @JsonKey()
  List<Store> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, descriptionRaw: $descriptionRaw, released: $released, tba: $tba, backgroundImage: $backgroundImage, rating: $rating, ratingTop: $ratingTop, ratingsCount: $ratingsCount, reviewsTextCount: $reviewsTextCount, added: $added, metacritic: $metacritic, playtime: $playtime, suggestionsCount: $suggestionsCount, userGame: $userGame, updated: $updated, esrbRating: $esrbRating, platforms: $platforms, genres: $genres, publishers: $publishers, stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.descriptionRaw, descriptionRaw) ||
                other.descriptionRaw == descriptionRaw) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.tba, tba) || other.tba == tba) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingTop, ratingTop) ||
                other.ratingTop == ratingTop) &&
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
            (identical(other.userGame, userGame) ||
                other.userGame == userGame) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.esrbRating, esrbRating) ||
                other.esrbRating == esrbRating) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._publishers, _publishers) &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        slug,
        name,
        descriptionRaw,
        released,
        tba,
        backgroundImage,
        rating,
        ratingTop,
        ratingsCount,
        reviewsTextCount,
        added,
        metacritic,
        playtime,
        suggestionsCount,
        userGame,
        updated,
        esrbRating,
        const DeepCollectionEquality().hash(_platforms),
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_publishers),
        const DeepCollectionEquality().hash(_stores)
      ]);

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
      final String descriptionRaw,
      @TryParseDateTime() final DateTime? released,
      final bool tba,
      final String backgroundImage,
      final double rating,
      final int ratingTop,
      final int ratingsCount,
      final int reviewsTextCount,
      final int added,
      final int metacritic,
      final int playtime,
      final int suggestionsCount,
      final int userGame,
      @TryParseDateTime() final DateTime? updated,
      final EsrbRating esrbRating,
      final List<Platform> platforms,
      final List<Genre> genres,
      final List<Publisher> publishers,
      final List<Store> stores}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  String get descriptionRaw;
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
  int get userGame;
  @override
  @TryParseDateTime()
  DateTime? get updated;
  @override
  EsrbRating get esrbRating;
  @override
  List<Platform> get platforms;
  @override
  List<Genre> get genres;
  @override
  List<Publisher> get publishers;
  @override
  List<Store> get stores;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  String get imageBackground => throw _privateConstructorUsedError;

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
  $Res call({int id, String slug, String name, String imageBackground});
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
    Object? imageBackground = null,
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
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
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
  $Res call({int id, String slug, String name, String imageBackground});
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
    Object? imageBackground = null,
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
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlatformDataImpl implements _PlatformData {
  const _$PlatformDataImpl(
      {this.id = 0, this.slug = '', this.name = '', this.imageBackground = ''});

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
  @JsonKey()
  final String imageBackground;

  @override
  String toString() {
    return 'PlatformData(id: $id, slug: $slug, name: $name, imageBackground: $imageBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageBackground, imageBackground) ||
                other.imageBackground == imageBackground));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name, imageBackground);

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
      final String name,
      final String imageBackground}) = _$PlatformDataImpl;

  factory _PlatformData.fromJson(Map<String, dynamic> json) =
      _$PlatformDataImpl.fromJson;

  @override
  int get id;
  @override
  String get slug;
  @override
  String get name;
  @override
  String get imageBackground;
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

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get gamesCount => throw _privateConstructorUsedError;
  String get imageBackground => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      int gamesCount,
      String imageBackground});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? gamesCount = null,
    Object? imageBackground = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      int gamesCount,
      String imageBackground});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? gamesCount = null,
    Object? imageBackground = null,
  }) {
    return _then(_$GenreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GenreImpl implements _Genre {
  const _$GenreImpl(
      {this.id = 0,
      this.name = '',
      this.slug = '',
      this.gamesCount = 0,
      this.imageBackground = ''});

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final int gamesCount;
  @override
  @JsonKey()
  final String imageBackground;

  @override
  String toString() {
    return 'Genre(id: $id, name: $name, slug: $slug, gamesCount: $gamesCount, imageBackground: $imageBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.gamesCount, gamesCount) ||
                other.gamesCount == gamesCount) &&
            (identical(other.imageBackground, imageBackground) ||
                other.imageBackground == imageBackground));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, gamesCount, imageBackground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre(
      {final int id,
      final String name,
      final String slug,
      final int gamesCount,
      final String imageBackground}) = _$GenreImpl;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  int get gamesCount;
  @override
  String get imageBackground;
  @override
  @JsonKey(ignore: true)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Publisher _$PublisherFromJson(Map<String, dynamic> json) {
  return _Publisher.fromJson(json);
}

/// @nodoc
mixin _$Publisher {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get gamesCount => throw _privateConstructorUsedError;
  String get imageBackground => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherCopyWith<Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherCopyWith<$Res> {
  factory $PublisherCopyWith(Publisher value, $Res Function(Publisher) then) =
      _$PublisherCopyWithImpl<$Res, Publisher>;
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      int gamesCount,
      String imageBackground});
}

/// @nodoc
class _$PublisherCopyWithImpl<$Res, $Val extends Publisher>
    implements $PublisherCopyWith<$Res> {
  _$PublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? gamesCount = null,
    Object? imageBackground = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublisherImplCopyWith<$Res>
    implements $PublisherCopyWith<$Res> {
  factory _$$PublisherImplCopyWith(
          _$PublisherImpl value, $Res Function(_$PublisherImpl) then) =
      __$$PublisherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      int gamesCount,
      String imageBackground});
}

/// @nodoc
class __$$PublisherImplCopyWithImpl<$Res>
    extends _$PublisherCopyWithImpl<$Res, _$PublisherImpl>
    implements _$$PublisherImplCopyWith<$Res> {
  __$$PublisherImplCopyWithImpl(
      _$PublisherImpl _value, $Res Function(_$PublisherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? gamesCount = null,
    Object? imageBackground = null,
  }) {
    return _then(_$PublisherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gamesCount: null == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PublisherImpl implements _Publisher {
  const _$PublisherImpl(
      {this.id = 0,
      this.name = '',
      this.slug = '',
      this.gamesCount = 0,
      this.imageBackground = ''});

  factory _$PublisherImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublisherImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final int gamesCount;
  @override
  @JsonKey()
  final String imageBackground;

  @override
  String toString() {
    return 'Publisher(id: $id, name: $name, slug: $slug, gamesCount: $gamesCount, imageBackground: $imageBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublisherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.gamesCount, gamesCount) ||
                other.gamesCount == gamesCount) &&
            (identical(other.imageBackground, imageBackground) ||
                other.imageBackground == imageBackground));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, gamesCount, imageBackground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      __$$PublisherImplCopyWithImpl<_$PublisherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublisherImplToJson(
      this,
    );
  }
}

abstract class _Publisher implements Publisher {
  const factory _Publisher(
      {final int id,
      final String name,
      final String slug,
      final int gamesCount,
      final String imageBackground}) = _$PublisherImpl;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$PublisherImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  int get gamesCount;
  @override
  String get imageBackground;
  @override
  @JsonKey(ignore: true)
  _$$PublisherImplCopyWith<_$PublisherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  StoreData get store => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call({int id, String url, StoreData store});

  $StoreDataCopyWith<$Res> get store;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? store = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreDataCopyWith<$Res> get store {
    return $StoreDataCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, StoreData store});

  @override
  $StoreDataCopyWith<$Res> get store;
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? store = null,
  }) {
    return _then(_$StoreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreData,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$StoreImpl implements _Store {
  const _$StoreImpl(
      {this.id = 0, this.url = '', this.store = const StoreData()});

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final StoreData store;

  @override
  String toString() {
    return 'Store(id: $id, url: $url, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, store);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {final int id, final String url, final StoreData store}) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  StoreData get store;
  @override
  @JsonKey(ignore: true)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreData _$StoreDataFromJson(Map<String, dynamic> json) {
  return _StoreDatar.fromJson(json);
}

/// @nodoc
mixin _$StoreData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get imageBackground => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDataCopyWith<StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataCopyWith<$Res> {
  factory $StoreDataCopyWith(StoreData value, $Res Function(StoreData) then) =
      _$StoreDataCopyWithImpl<$Res, StoreData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      String imageBackground,
      String domain});
}

/// @nodoc
class _$StoreDataCopyWithImpl<$Res, $Val extends StoreData>
    implements $StoreDataCopyWith<$Res> {
  _$StoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? imageBackground = null,
    Object? domain = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDatarImplCopyWith<$Res>
    implements $StoreDataCopyWith<$Res> {
  factory _$$StoreDatarImplCopyWith(
          _$StoreDatarImpl value, $Res Function(_$StoreDatarImpl) then) =
      __$$StoreDatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      String imageBackground,
      String domain});
}

/// @nodoc
class __$$StoreDatarImplCopyWithImpl<$Res>
    extends _$StoreDataCopyWithImpl<$Res, _$StoreDatarImpl>
    implements _$$StoreDatarImplCopyWith<$Res> {
  __$$StoreDatarImplCopyWithImpl(
      _$StoreDatarImpl _value, $Res Function(_$StoreDatarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? imageBackground = null,
    Object? domain = null,
  }) {
    return _then(_$StoreDatarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageBackground: null == imageBackground
          ? _value.imageBackground
          : imageBackground // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$StoreDatarImpl implements _StoreDatar {
  const _$StoreDatarImpl(
      {this.id = 0,
      this.name = '',
      this.slug = '',
      this.imageBackground = '',
      this.domain = ''});

  factory _$StoreDatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDatarImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String imageBackground;
  @override
  @JsonKey()
  final String domain;

  @override
  String toString() {
    return 'StoreData(id: $id, name: $name, slug: $slug, imageBackground: $imageBackground, domain: $domain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDatarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.imageBackground, imageBackground) ||
                other.imageBackground == imageBackground) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, imageBackground, domain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDatarImplCopyWith<_$StoreDatarImpl> get copyWith =>
      __$$StoreDatarImplCopyWithImpl<_$StoreDatarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDatarImplToJson(
      this,
    );
  }
}

abstract class _StoreDatar implements StoreData {
  const factory _StoreDatar(
      {final int id,
      final String name,
      final String slug,
      final String imageBackground,
      final String domain}) = _$StoreDatarImpl;

  factory _StoreDatar.fromJson(Map<String, dynamic> json) =
      _$StoreDatarImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get imageBackground;
  @override
  String get domain;
  @override
  @JsonKey(ignore: true)
  _$$StoreDatarImplCopyWith<_$StoreDatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
