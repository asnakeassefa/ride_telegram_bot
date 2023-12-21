import 'dart:convert';

import 'package:intl/intl.dart';

extension StringUtils on String {
  List<String> convertStringToList(String keyWord) {
    List<String> data = [];
    jsonDecode(this).forEach((e) {
      data.add(e[keyWord]);
    });
    return data;
  }

  bool isStrongPass() {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(this);
  }
}

extension CurrencyUtils on dynamic {
  String formatCurrency(currency) {
    final formatter =
        NumberFormat.currency(locale: "en_US", symbol: "$currency ");
    if (this is num || this is double || this is int) {
      return formatter.format(this);
    } else {
      return formatter.format(num.tryParse(this));
    }
  }
}
