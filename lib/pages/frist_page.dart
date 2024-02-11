import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pages/second_page.dart';

import 'keeper_controller.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final keeperController = Get.find<KeeperController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => ElevatedButton(
                onPressed: () {

                  setState(() {
                    keeperController.firstBangla(true);
                    keeperController.firstEnglish(false);

                  });
                  Get.to(() => SecondPage());
                },
                child: Text("বাংলা ${keeperController.fBanglaC.value}"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  keeperController.firstBangla(false);
                  keeperController.firstEnglish(true);

                });
                Get.to(() => SecondPage());
              },
              child: Text("English ${keeperController.fEnglishC.value}"),
            ),
          ],
        ),
      ),
    );
  }
}
