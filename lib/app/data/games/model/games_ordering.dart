enum GamesOrdering {
  releasedDescending('-released');

  const GamesOrdering(this.code);

  final String code;
}
