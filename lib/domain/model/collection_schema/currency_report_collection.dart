import 'package:isar/isar.dart';

part 'currency_report_collection.g.dart';

@collection
class CurrencyReportCollection {
  Id? id;
  DateTime updatedAt = DateTime.now();
  List<CurrencyDetailCollection> detail = [];
}

@embedded
class CurrencyDetailCollection {
  String code = '';
  String symbol = '';
  String rate = '';
  double rateFloat = 0;
  String description = '';
}
