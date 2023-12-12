import 'package:get/get.dart';

class CoreMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print('Middleware: ${page?.name}');
    return super.onPageCalled(page);
  }
}
