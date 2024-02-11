import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pages/frist_page.dart';
import 'package:untitled1/pages/keeper_controller.dart';

import 'Helper/Routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TCB Dealer',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: RoutePages,
      initialBinding: BindingsBuilder(() {
        Get.put(KeeperController());
      }),
    );
  }
}
