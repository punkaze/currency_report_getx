import 'package:clean_structure_project/di/service_locator.dart';
import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/domain/repositories/currency/currency_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CurrentCurrencyPriceController extends GetxController {
  final CurrencyRepository _repository = getIt<CurrencyRepository>();
  final Stream<void> streamCurrentPrice =
      Stream.periodic(const Duration(minutes: 1), (x) => x);

  RxBool isLoading = false.obs;

  Rx<CurrencyReportCollection> currencyDetailList =
      CurrencyReportCollection().obs;
  RxDouble rateFloat = 0.0.obs;
  RxString rateFormat = ''.obs;

  List<String> currencyCodeList = ['USD', 'EUR', 'GBD'];

  final TextEditingController amountTextController = TextEditingController();
  RxString currentSelectedCurrencyCode = 'USD'.obs;

  @override
  void onInit() {
    super.onInit();
    retrieveCurrentPrice();
    streamCurrentPrice.listen((event) async {
      await retrieveCurrentPrice();
    });
  }

  Future<void> retrieveCurrentPrice({bool initial = false}) async {
    if (initial) {
      isLoading.value = true;
    }
    currencyDetailList.value = await _repository.getCurrentPrice();
    print(currencyDetailList.value.detail.length);
    if (initial) {
      isLoading.value = false;
    }
  }

  Future<void> computeCurrencyExchangePrice({
    required String currencyCode,
    required double currencyAmount,
  }) async {
    final currencyDetail = await _repository.getLastCurrencyReport();
    rateFormat.value =
        NumberFormat.simpleCurrency(name: currencyCode).format(0.0);

    if (currencyDetail != null) {
      for (final currency in currencyDetail.detail) {
        if (currency.code.toLowerCase() == currencyCode.toLowerCase()) {
          rateFloat.value = (1 / currency.rateFloat) * currencyAmount;
          rateFormat.value =
              NumberFormat.simpleCurrency().format(rateFloat.value);
          break;
        }
      }
    }
  }

  void onDropdownChanged(String? value) {
    if (value != null) {
      currentSelectedCurrencyCode.value = value;
    }
  }
}
