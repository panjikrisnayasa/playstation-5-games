import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/app_constants.dart';
import 'package:playstation_5_games/app/data/base_response.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/data/games/model/games_ordering.dart';
import 'package:playstation_5_games/app/network/http_client.dart';
import 'package:playstation_5_games/app/utils/date_time_formatter.dart';

class GamesRepository {
  GamesRepository(
    this._httpClient,
  );

  static final provider = Provider((ref) {
    return GamesRepository(
      ref.watch(HttpClient.provider),
    );
  });

  final HttpClient _httpClient;

  Future<BaseResponse<List<Game>>> getPlaystation5Games({
    int page = 1,
    int pageSize = 20,
    DateTime? startDate,
    DateTime? endDate,
    GamesOrdering ordering = GamesOrdering.releasedDescending,
  }) async {
    final currentDateTime = DateTime.now();

    startDate ??= DateTime(
      currentDateTime.year - 1,
      currentDateTime.month,
      currentDateTime.day,
    );
    endDate ??= DateTime(
      currentDateTime.year,
      currentDateTime.month,
      currentDateTime.day,
    );

    final response = await _httpClient.get<Map<String, dynamic>>(
      path: '/api/games',
      queryParameters: {
        'page': page,
        'page_size': pageSize,
        'platform': AppConstants.playstation5PlatformCode,
        'dates':
            '${startDate.formatDateToString},${endDate.formatDateToString}',
        'ordering': ordering.code,
      },
    );

    return BaseResponse.fromJson(
      response,
      (data) {
        return (data as List?)
                ?.map(
                  (e) => Game.fromJson(e),
                )
                .toList() ??
            [];
      },
    );
  }
}
