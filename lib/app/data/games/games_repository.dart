import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  Future<void> getPlaystation5Games() async {}
}
