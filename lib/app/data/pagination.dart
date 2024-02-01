import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class Pagination<T> with _$Pagination<T> {
  const factory Pagination({
    @Default(0) int count,
    @Default('') String next,
    @Default('') String previous,
    required T results,
  }) = _Pagination<T>;

  factory Pagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationFromJson(json, fromJsonT);
}
