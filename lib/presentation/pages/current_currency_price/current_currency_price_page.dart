import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/components/currency_detail_card.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/components/currency_exchange_form.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/controller/current_currency_price_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CurrentCurrencyPricePage extends StatelessWidget {
  const CurrentCurrencyPricePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CurrentCurrencyPriceController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Current Price',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            12.verticalSpace,
            Obx(
              () {
                CurrencyReportCollection data =
                    controller.currencyDetailList.value;
                final children = List<Widget>.generate(
                  data.detail.length,
                  (index) {
                    return CurrencyDetailCard(
                      detail: data.detail[index],
                    );
                  },
                );

                return Column(
                  children: children,
                );
              },
            ),
            25.verticalSpace,
            const CurrencyExchangeForm(),
          ],
        ),
      ),
    );
  }
}
