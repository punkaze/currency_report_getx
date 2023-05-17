// ignore: prefer_single_quotes
import "package:get/get.dart";

class HomeController extends GetxController {
  final RxInt count = 0.obs;

  void increment() => count.value++;
}
