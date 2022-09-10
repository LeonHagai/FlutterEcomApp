import 'package:ecom/pages/food/reccomended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  print("SHOULD PRINT RESPONSE:");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Von~Afric',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ReccomendedFoodDetail(),
    );
  }
}
