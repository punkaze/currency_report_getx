import 'package:dio/dio.dart';
import 'package:isar/isar.dart';

import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/domain/model/currency/currency_detail_model.dart';
import 'package:clean_structure_project/domain/model/currency/currency_response_model.dart';
import 'package:clean_structure_project/services/database/database.dart';
import 'package:clean_structure_project/services/network/api/currency_api.dart';
import 'package:clean_structure_project/services/network/api_exception.dart';

class CurrencyRepository {
  CurrencyRepository({
    required this.api,
    required this.database,
  });

  final CurrencyApi api;
  final Database database;

  Future<CurrencyReportCollection> getCurrentPrice() async {
    try {
      final response = await api.getCurrencyApi();

      final currencyResponse = CurrencyResponseModel.fromJson(
        response,
      );

      final currencyDetailList = <CurrencyDetailModel>[
        currencyResponse.bpi.eur,
        currencyResponse.bpi.gbp,
        currencyResponse.bpi.usd,
      ];

      final detailList = <CurrencyDetailCollection>[];
      for (final detail in currencyDetailList) {
        detailList.add(
          CurrencyDetailCollection()
            ..code = detail.code
            ..symbol = detail.symbol
            ..rate = detail.rate
            ..rateFloat = detail.rateFloat
            ..description = detail.description,
        );
      }

      final currencyReport = CurrencyReportCollection()
        ..detail = detailList
        ..updatedAt = currencyResponse.time.updatedISO;

      await database.put<CurrencyReportCollection>(data: currencyReport);
      // await database.instance.writeTxn(
      //   () async {
      //     await currencyReportCollection.put(currencyReport);
      //   },
      // );

      return currencyReport;
    } on DioError catch (e) {
      final errorMessage = ApiException.fromDioError(e);
      throw errorMessage;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CurrencyReportCollection>> getCurrencyReport() async {
    try {
      return await database.currencyReportCollection
          .filter()
          .detailIsNotEmpty()
          .sortByUpdatedAtDesc()
          .findAll();
    } catch (e) {
      rethrow;
    }
  }

  Future<CurrencyReportCollection?> getLastCurrencyReport() async {
    try {
      final currencyDetailCollection = database.currencyReportCollection;

      return await currencyDetailCollection
          .where()
          .sortByUpdatedAtDesc()
          .findFirst();
    } catch (e) {
      rethrow;
    }
  }
}
