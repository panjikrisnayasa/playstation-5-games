import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/app_constants.dart';
import 'package:playstation_5_games/app/data/base_response.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/network/http_client.dart';

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

  // TODO: add start and end date, and ordering to query params
  Future<List<Game>> getPlaystation5Games({
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: '/api/games',
      queryParameters: {
        'page': page,
        'page_size': pageSize,
        'platform': AppConstants.playstation5PlatformCode,
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
    ).results;
  }
}
