import 'package:clean_structure_project/di/service_locator.dart';
import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/domain/repositories/currency/currency_repository.dart';
import 'package:get/get.dart';

class CurrencyReportController extends GetxController {
  final CurrencyRepository _repository = getIt<CurrencyRepository>();

  RxList<CurrencyReportCollection> currencyReport = RxList.empty();

  @override
  void onInit() {
    super.onInit();
    retrieveCurrencyReport();
    interval(
      currencyReport,
      (callback) => retrieveCurrencyReport(),
      time: const Duration(minutes: 1),
    );
  }

  Future<void> retrieveCurrencyReport() async {
    currencyReport.value = await _repository.getCurrencyReport();
  }
}
