import 'package:clean_structure_project/presentation/pages/currency_report/data/currency_report_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CurrencyReportPage extends StatelessWidget {
  const CurrencyReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? code = Get.arguments['code'];

    final chartData = <CurrencyData>[];
    for (final element in []) {
      final currencyData = element.detail.firstWhere((e) => e.code == code);
      chartData.add(
        CurrencyData(
          element.updatedAt,
          currencyData.rateFloat,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Current Report',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 20,
              ),
              child: SizedBox(
                height: .7.sw,
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Historical price of BTC/$code'),
                  series: <LineSeries<CurrencyData, String>>[
                    LineSeries<CurrencyData, String>(
                      dataSource: chartData,
                      xValueMapper: (CurrencyData data, _) =>
                          DateFormat('d MMM H:mm').format(data.dateTime),
                      yValueMapper: (CurrencyData data, _) => data.rate,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
