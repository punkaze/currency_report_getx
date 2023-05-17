import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:isar/isar.dart';

class Database {
  Database(this._isar);

  late final Isar _isar;

  Isar get instance => _isar;

  IsarCollection<CurrencyReportCollection> get currencyReportCollection =>
      _isar.collection<CurrencyReportCollection>();

  Future<void> put<T>({required T data}) async {
    await _isar.writeTxn(
      () async {
        await _isar.collection<T>().put(data);
      },
    );
  }
}
