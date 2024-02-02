import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/app_constants.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/data/games/model/games_ordering.dart';
import 'package:playstation_5_games/app/data/pagination.dart';
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

  Future<Pagination<List<Game>>> getPlaystation5Games({
    int page = 1,
    int pageSize = 20,
  }) async {
    final currentDateTime = DateTime.now();
    final startDate = DateTime(
      currentDateTime.year - 1,
      currentDateTime.month,
      currentDateTime.day,
    );
    final endDate = DateTime(
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
        'ordering': GamesOrdering.releasedDescending.code,
      },
    );

    return Pagination.fromJson(
      response,
      (data) {
        return (data as List)
            .map(
              (e) => Game.fromJson(e),
            )
            .toList();
      },
    );
  }

  Future<Game> getGameDetails({
    required int id,
  }) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: '/api/games/$id',
    );

    return Game.fromJson(response);
  }
}
