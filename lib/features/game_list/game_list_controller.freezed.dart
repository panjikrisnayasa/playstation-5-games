// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameListUiState {
  AsyncValue<List<Game>> get gameList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameListUiStateCopyWith<GameListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListUiStateCopyWith<$Res> {
  factory $GameListUiStateCopyWith(
          GameListUiState value, $Res Function(GameListUiState) then) =
      _$GameListUiStateCopyWithImpl<$Res, GameListUiState>;
  @useResult
  $Res call({AsyncValue<List<Game>> gameList});
}

/// @nodoc
class _$GameListUiStateCopyWithImpl<$Res, $Val extends GameListUiState>
    implements $GameListUiStateCopyWith<$Res> {
  _$GameListUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameList = null,
  }) {
    return _then(_value.copyWith(
      gameList: null == gameList
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Game>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameListUiStateImplCopyWith<$Res>
    implements $GameListUiStateCopyWith<$Res> {
  factory _$$GameListUiStateImplCopyWith(_$GameListUiStateImpl value,
          $Res Function(_$GameListUiStateImpl) then) =
      __$$GameListUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Game>> gameList});
}

/// @nodoc
class __$$GameListUiStateImplCopyWithImpl<$Res>
    extends _$GameListUiStateCopyWithImpl<$Res, _$GameListUiStateImpl>
    implements _$$GameListUiStateImplCopyWith<$Res> {
  __$$GameListUiStateImplCopyWithImpl(
      _$GameListUiStateImpl _value, $Res Function(_$GameListUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameList = null,
  }) {
    return _then(_$GameListUiStateImpl(
      gameList: null == gameList
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Game>>,
    ));
  }
}

/// @nodoc

class _$GameListUiStateImpl implements _GameListUiState {
  const _$GameListUiStateImpl({this.gameList = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<List<Game>> gameList;

  @override
  String toString() {
    return 'GameListUiState(gameList: $gameList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameListUiStateImpl &&
            (identical(other.gameList, gameList) ||
                other.gameList == gameList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameListUiStateImplCopyWith<_$GameListUiStateImpl> get copyWith =>
      __$$GameListUiStateImplCopyWithImpl<_$GameListUiStateImpl>(
          this, _$identity);
}

abstract class _GameListUiState implements GameListUiState {
  const factory _GameListUiState({final AsyncValue<List<Game>> gameList}) =
      _$GameListUiStateImpl;

  @override
  AsyncValue<List<Game>> get gameList;
  @override
  @JsonKey(ignore: true)
  _$$GameListUiStateImplCopyWith<_$GameListUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
