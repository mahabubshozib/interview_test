import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pages/keeper_controller.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final keeperController = Get.find<KeeperController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third page"),
      ),
      body: Column(
        children: [
          Obx(() => keeperController.secondBanglaAdhunik.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("আধুনিক যুগ"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    keeperController
                                        .secondBanglaAdhunikC.value++;
                                  });
                                },
                                child: const Text("রবীন্দ্রনাথ যুগ"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    keeperController
                                        .secondBanglaAdhunikC.value++;
                                  });
                                },
                                child: const Text("কাজী"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          Obx(() => keeperController.secondBanglaMiddle.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("মধ্য যুগ"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    keeperController
                                        .secondBanglaMiddleC.value++;
                                  });
                                },
                                child: const Text("শ্রী যুগ"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    keeperController
                                        .secondBanglaMiddleC.value++;
                                  });
                                },
                                child: const Text("পালা"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          Obx(() => keeperController.secondBanglaPrachin.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("প্রাচীন যুগ"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  keeperController.secondBanglaPrachinC.value++;
                                },
                                child: const Text("চর্যাপদ"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          Obx(() => keeperController.secondEnglishLit.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("For Literature"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishLit(true);
                                keeperController.secondEngLitC.value++;
                              });
                            },
                            child: const Text("Elizabethan"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishLit(true);
                                keeperController.secondEngLitC.value++;
                              });
                            },
                            child: const Text("Jacobain"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          Obx(() => keeperController.secondEnglishPoet.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("poets"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishPoet(true);
                                keeperController.secondEngPoetsC.value++;
                              });
                            },
                            child: const Text("John keats"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
          Obx(() => keeperController.secondEnglishGrammer.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Grammer"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishGrammer(true);
                                keeperController.secondEngGrammerC.value++;
                              });
                            },
                            child: const Text("Tense"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishGrammer(true);
                                keeperController.secondEngGrammerC.value++;
                              });
                            },
                            child: const Text("Sentence"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                keeperController.secondEnglishGrammer(true);
                                keeperController.secondEngGrammerC.value++;
                              });
                            },
                            child: const Text("idioms"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()),
        ],
      ),
    );
  }
}
