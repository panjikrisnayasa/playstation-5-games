// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'try_parse_date_time_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DummyModel _$DummyModelFromJson(Map<String, dynamic> json) {
  return _DummyModel.fromJson(json);
}

/// @nodoc
mixin _$DummyModel {
  @TryParseDateTime()
  DateTime? get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DummyModelCopyWith<DummyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DummyModelCopyWith<$Res> {
  factory $DummyModelCopyWith(
          DummyModel value, $Res Function(DummyModel) then) =
      _$DummyModelCopyWithImpl<$Res, DummyModel>;
  @useResult
  $Res call({@TryParseDateTime() DateTime? publishedAt});
}

/// @nodoc
class _$DummyModelCopyWithImpl<$Res, $Val extends DummyModel>
    implements $DummyModelCopyWith<$Res> {
  _$DummyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DummyModelImplCopyWith<$Res>
    implements $DummyModelCopyWith<$Res> {
  factory _$$DummyModelImplCopyWith(
          _$DummyModelImpl value, $Res Function(_$DummyModelImpl) then) =
      __$$DummyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TryParseDateTime() DateTime? publishedAt});
}

/// @nodoc
class __$$DummyModelImplCopyWithImpl<$Res>
    extends _$DummyModelCopyWithImpl<$Res, _$DummyModelImpl>
    implements _$$DummyModelImplCopyWith<$Res> {
  __$$DummyModelImplCopyWithImpl(
      _$DummyModelImpl _value, $Res Function(_$DummyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = freezed,
  }) {
    return _then(_$DummyModelImpl(
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DummyModelImpl implements _DummyModel {
  const _$DummyModelImpl({@TryParseDateTime() this.publishedAt});

  factory _$DummyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DummyModelImplFromJson(json);

  @override
  @TryParseDateTime()
  final DateTime? publishedAt;

  @override
  String toString() {
    return 'DummyModel(publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DummyModelImpl &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DummyModelImplCopyWith<_$DummyModelImpl> get copyWith =>
      __$$DummyModelImplCopyWithImpl<_$DummyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DummyModelImplToJson(
      this,
    );
  }
}

abstract class _DummyModel implements DummyModel {
  const factory _DummyModel({@TryParseDateTime() final DateTime? publishedAt}) =
      _$DummyModelImpl;

  factory _DummyModel.fromJson(Map<String, dynamic> json) =
      _$DummyModelImpl.fromJson;

  @override
  @TryParseDateTime()
  DateTime? get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$DummyModelImplCopyWith<_$DummyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
