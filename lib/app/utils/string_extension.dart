extension StringExtension on String? {
  /// Return dash when String is null or empty
  String get orDash => this?.isNotEmpty ?? false ? this! : '-';
}
