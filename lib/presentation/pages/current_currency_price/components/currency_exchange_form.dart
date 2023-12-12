import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:clean_structure_project/common/style/app_colors.dart';
import 'package:clean_structure_project/common/style/app_styles.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/controller/current_currency_price_controller.dart';

class CurrencyExchangeForm extends StatelessWidget {
  const CurrencyExchangeForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CurrentCurrencyPriceController>();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: TextFormField(
                  controller: controller.amountTextController,
                  cursorColor: AppColors.black,
                  textAlign: TextAlign.end,
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      decimalDigits: 2,
                      enableNegative: false,
                      symbol: '',
                    ),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'XX,XXX.XX',
                    hintStyle: AppStyles.hintTextStyle,
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey,
                    focusColor: AppColors.grey,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: AppStyles.enabledBorder,
                    focusedBorder: AppStyles.focusedBorder,
                    errorBorder: AppStyles.errorBorder,
                  ),
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Obx(
                  () {
                    List<DropdownMenuItem<String>> dropdownItems =
                        List.generate(
                      controller.currencyCodeList.length,
                      (index) => DropdownMenuItem(
                        value: controller.currencyCodeList[index],
                        child: Text(
                          controller.currencyCodeList[index],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    );

                    return DropdownButton<String>(
                      onChanged: controller.onDropdownChanged,
                      value: controller.currentSelectedCurrencyCode.value,
                      isExpanded: true,
                      style: const TextStyle(
                        color: AppColors.black,
                      ),
                      items: dropdownItems,
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: .66.sw,
              height: .12.sw,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () {
                      return Text(
                        '${controller.rateFloat.value.toStringAsFixed(8)} BTC',
                        style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: ElevatedButton(
              onPressed: () {
                if (controller.amountTextController.text.isEmpty) {
                  return;
                }

                final double amount = double.parse(
                  controller.amountTextController.text,
                );
                final String currencyCode =
                    controller.currentSelectedCurrencyCode.value;

                controller.computeCurrencyExchangePrice(
                  currencyAmount: amount,
                  currencyCode: currencyCode,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: Size(.6.sw, .13.sw),
                foregroundColor: AppColors.blue,
              ),
              child: Text(
                'Enabled Button',
                style: AppStyles.buttonTextStyle.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
