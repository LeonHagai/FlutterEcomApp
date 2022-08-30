import 'package:ecom/controller/popular_product_controller.dart';
import 'package:ecom/data/api/api_client.dart';
import 'package:ecom/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com/"));

  // get repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
