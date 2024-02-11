import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pages/third_page.dart';

import 'keeper_controller.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final keeperController = Get.find<KeeperController>();

  @override
  void initState() {
    // TODO: implement initState
    print('======>>> ${keeperController.firstBangla.value}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Obx(() => keeperController.firstBangla.value == true
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("For bangla"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Obx(
                              () => ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    keeperController.secondBanglaAdhunik(true);
                                    keeperController.secondBanglaMiddle(false);
                                    keeperController.secondBanglaPrachin(false);
                                    keeperController.secondEnglishLit(false);
                                    keeperController.secondEnglishPoet(false);
                                    keeperController.secondEnglishGrammer(false);
                                    keeperController.fBanglaC.value++;

                                  });
                                  Get.to(() => ThirdPage());
                                  print(
                                      '${keeperController.secondBanglaAdhunikC.value}');
                                },
                                child: Text(
                                    "আধুনিক যুগ ${keeperController.secondBanglaAdhunikC.value}"),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  keeperController.secondBanglaAdhunik(false);
                                  keeperController.secondBanglaMiddle(true);
                                  keeperController.secondBanglaPrachin(false);
                                  keeperController.secondEnglishLit(false);
                                  keeperController.secondEnglishPoet(false);
                                  keeperController.secondEnglishGrammer(false);
                                  keeperController.fBanglaC.value++;

                                });

                                Get.to(() => ThirdPage());
                              },
                              child: Text("মধ্য যুগ ${keeperController.secondBanglaMiddleC.value}"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  keeperController.secondBanglaAdhunik(false);
                                  keeperController.secondBanglaMiddle(false);
                                  keeperController.secondBanglaPrachin(true);
                                  keeperController.secondEnglishLit(false);
                                  keeperController.secondEnglishPoet(false);
                                  keeperController.secondEnglishGrammer(false);
                                  keeperController.fBanglaC.value++;

                                });
                                Get.to(() => ThirdPage());
                              },
                              child: Text("প্রাচীন যুগ ${keeperController.secondBanglaPrachinC.value}"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("For English"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  keeperController.secondEnglishLit(true);
                                  keeperController.secondEnglishPoet(false);
                                  keeperController.secondEnglishGrammer(false);
                                  keeperController.secondBanglaAdhunik(false);
                                  keeperController.secondBanglaMiddle(false);
                                  keeperController.secondBanglaPrachin(false);
                                  keeperController.fEnglishC.value++;
                                });
                                Get.to(() => ThirdPage());
                              },
                              child: Text("Literature ${keeperController.secondEngLitC.value}"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  keeperController.secondEnglishPoet(true);
                                  keeperController.secondEnglishGrammer(false);
                                  keeperController.secondEnglishLit(false);
                                  keeperController.secondBanglaAdhunik(false);
                                  keeperController.secondBanglaMiddle(false);
                                  keeperController.secondBanglaPrachin(false);
                                  keeperController.fEnglishC.value++;

                                });
                                Get.to(() => ThirdPage());
                              },
                              child: Text("Poets ${keeperController.secondEngPoetsC.value}"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  keeperController.secondEnglishGrammer(true);
                                  keeperController.secondEnglishLit(false);
                                  keeperController.secondEnglishPoet(false);
                                  keeperController.secondBanglaAdhunik(false);
                                  keeperController.secondBanglaMiddle(false);
                                  keeperController.secondBanglaPrachin(false);
                                  keeperController.fEnglishC.value++;

                                });
                                Get.to(() => ThirdPage());
                              },
                              child:  Text("Grammer ${keeperController.secondEngGrammerC.value}"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
          ],
        ),
      ),
    );
  }
}
