import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime? {
  String yMMMd(BuildContext context) {
    if (this == null) return '-';

    return DateFormat.yMMMd().format(this!);
  }

  // ignore: non_constant_identifier_names
  String Hm(BuildContext context) {
    if (this == null) return '-';

    return DateFormat.Hm().format(this!);
  }

  String yMMMdHm(BuildContext context) {
    if (this == null) return '-';

    return '${yMMMd(context)} ${Hm(context)}';
  }
}
