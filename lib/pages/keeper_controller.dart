import 'package:get/get.dart';

class KeeperController extends GetxController {
  final firstBangla = false.obs;
  final firstEnglish = false.obs;
  final secondBanglaAdhunik = false.obs;
  final secondBanglaMiddle = false.obs;
  final secondBanglaPrachin = false.obs;
  final secondEnglishLit = false.obs;
  final secondEnglishPoet = false.obs;
  final secondEnglishGrammer = false.obs;




  // Button counts ======================================
  final fBanglaC = 0.obs;
  final fEnglishC = 0.obs;
  final secondBanglaAdhunikC = 0.obs;
  final secondBanglaMiddleC = 0.obs;
  final secondBanglaPrachinC = 0.obs;
  final secondEngLitC = 0.obs;
  final secondEngPoetsC = 0.obs;
  final secondEngGrammerC = 0.obs;

  // ============== Method

void increament(int value) {
  value++;
  print('${value}');
  }


}