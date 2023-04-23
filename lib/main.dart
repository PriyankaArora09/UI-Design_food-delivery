//import 'package:first_project/home/main_food_page.dart';
import 'package:first_project/controllers/popular_product_controller.dart';
import 'package:first_project/pages/food/popular_food_detail.dart';
import 'package:first_project/pages/food/recommended_food_detail.dart';
import 'package:first_project/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      //Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );

  }
}

