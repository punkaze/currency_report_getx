import 'package:clean_structure_project/common/style/app_colors.dart';
import 'package:clean_structure_project/common/style/app_styles.dart';
import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/presentation/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CurrencyDetailCard extends StatelessWidget {
  const CurrencyDetailCard({
    super.key,
    required this.detail,
  });

  final CurrencyDetailCollection detail;

  @override
  Widget build(BuildContext context) {
    late Color currencyColor;
    if (detail.code == 'EUR') {
      currencyColor = AppColors.red;
    }
    if (detail.code == 'GBP') {
      currencyColor = AppColors.lightBlue;
    }
    if (detail.code == 'USD') {
      currencyColor = AppColors.orange;
    }

    return GestureDetector(
      onTap: () async {
        await Get.toNamed(
          '${Paths.CURRENT_PRICE}${Paths.CURRENCY_REPORT}',
          arguments: {'code': detail.code},
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 6,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.grey,
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 100,
                  color: currencyColor,
                  child: Center(
                    child: Html(
                      data: '<body>${detail.symbol}</body>',
                      style: {
                        'body': Style(
                          width: Width(50),
                          alignment: Alignment.center,
                          textAlign: TextAlign.center,
                          fontSize: FontSize.large,
                          fontWeight: FontWeight.bold,
                        )
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.simpleCurrency(name: detail.code)
                              .format(detail.rateFloat),
                          style: AppStyles.h1TextStyle,
                        ),
                        6.verticalSpace,
                        Text(
                          'BTC/${detail.code}',
                          style: AppStyles.h2TextStyle,
                        ),
                        3.verticalSpace,
                        Text(
                          detail.description,
                          style: AppStyles.subNormalTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: Icon(
                    Icons.bar_chart_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
