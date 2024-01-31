// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as int? ?? 0,
      slug: json['slug'] as String? ?? '',
      name: json['name'] as String? ?? '',
      released: const TryParseDateTime().fromJson(json['released'] as String?),
      tba: json['tba'] as bool? ?? false,
      backgroundImage: json['background_image'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      ratingTop: json['rating_top'] as int? ?? 0,
      ratings: (json['ratings'] as List<dynamic>?)
              ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      ratingsCount: json['ratings_count'] as int? ?? 0,
      reviewsTextCount: json['reviews_text_count'] as int? ?? 0,
      added: json['added'] as int? ?? 0,
      metacritic: json['metacritic'] as int? ?? 0,
      playtime: json['playtime'] as int? ?? 0,
      suggestionsCount: json['suggestions_count'] as int? ?? 0,
      updated: const TryParseDateTime().fromJson(json['updated'] as String?),
      esrbRating: json['esrb_rating'] == null
          ? const EsrbRating()
          : EsrbRating.fromJson(json['esrb_rating'] as Map<String, dynamic>),
      platforms: (json['platforms'] as List<dynamic>?)
              ?.map((e) => Platform.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'released': const TryParseDateTime().toJson(instance.released),
      'tba': instance.tba,
      'background_image': instance.backgroundImage,
      'rating': instance.rating,
      'rating_top': instance.ratingTop,
      'ratings': instance.ratings,
      'ratings_count': instance.ratingsCount,
      'reviews_text_count': instance.reviewsTextCount,
      'added': instance.added,
      'metacritic': instance.metacritic,
      'playtime': instance.playtime,
      'suggestions_count': instance.suggestionsCount,
      'updated': const TryParseDateTime().toJson(instance.updated),
      'esrb_rating': instance.esrbRating,
      'platforms': instance.platforms,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) =>
    const _$RatingImpl();

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{};

_$EsrbRatingImpl _$$EsrbRatingImplFromJson(Map<String, dynamic> json) =>
    _$EsrbRatingImpl(
      id: json['id'] as int? ?? 0,
      slug: json['slug'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$EsrbRatingImplToJson(_$EsrbRatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };

_$PlatformImpl _$$PlatformImplFromJson(Map<String, dynamic> json) =>
    _$PlatformImpl(
      platform: json['platform'] == null
          ? const PlatformData()
          : PlatformData.fromJson(json['platform'] as Map<String, dynamic>),
      releasedAt:
          const TryParseDateTime().fromJson(json['released_at'] as String?),
      requirements: json['requirements'] == null
          ? const Requirements()
          : Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlatformImplToJson(_$PlatformImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'released_at': const TryParseDateTime().toJson(instance.releasedAt),
      'requirements': instance.requirements,
    };

_$PlatformDataImpl _$$PlatformDataImplFromJson(Map<String, dynamic> json) =>
    _$PlatformDataImpl(
      id: json['id'] as int? ?? 0,
      slug: json['slug'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$PlatformDataImplToJson(_$PlatformDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };

_$RequirementsImpl _$$RequirementsImplFromJson(Map<String, dynamic> json) =>
    _$RequirementsImpl(
      minimum: json['minimum'] as String? ?? '',
      recommended: json['recommended'] as String? ?? '',
    );

Map<String, dynamic> _$$RequirementsImplToJson(_$RequirementsImpl instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'recommended': instance.recommended,
    };
