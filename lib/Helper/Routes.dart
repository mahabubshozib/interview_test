import 'package:get/get.dart';
import 'package:untitled1/Helper/routes_url.dart';
import 'package:untitled1/pages/frist_page.dart';
import 'package:untitled1/pages/second_page.dart';
import 'package:untitled1/pages/third_page.dart';

final List<GetPage<dynamic>> RoutePages = [
  GetPage(name: "/", page: () => FirstPage(), children: [
    GetPage(
      name: secondPage,
      page: () =>  SecondPage(),
    ),
    GetPage(
      name: thirdPage,
      page: () =>  ThirdPage(),
    ),
  ])
];