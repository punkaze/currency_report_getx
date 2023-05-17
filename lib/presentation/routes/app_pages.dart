import 'package:clean_structure_project/presentation/pages/currency_report/controller/currency_report_controller.dart';
import 'package:clean_structure_project/presentation/pages/currency_report/currency_report_page.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/controller/current_currency_price_controller.dart';
import 'package:clean_structure_project/presentation/pages/current_currency_price/current_currency_price_page.dart';
import 'package:clean_structure_project/presentation/routes/middleware/core_middleware.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const String initial = Paths.CURRENT_PRICE;

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage(
      name: Paths.CURRENT_PRICE,
      page: () => const CurrentCurrencyPricePage(),
      middlewares: [CoreMiddleware()],
      binding: BindingsBuilder(() {
        Get.lazyPut<CurrentCurrencyPriceController>(
            CurrentCurrencyPriceController.new);
      }),
      children: [
        GetPage(
          name: Paths.CURRENCY_REPORT,
          page: () => const CurrencyReportPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<CurrencyReportController>(CurrencyReportController.new);
          }),
        ),
      ],
    ),
  ];
}
