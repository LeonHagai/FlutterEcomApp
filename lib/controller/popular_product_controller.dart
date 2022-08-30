import 'package:dson/dson.dart';
import 'package:ecom/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    String jsonString = toJson(response.body);
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);

      update();
      // avoid in production
      print("FROM CNTRLR STTS200:  " + jsonString);
    } else {
      print("FROM CNTRLR STTS UNKNOWN:  " + jsonString);
    }
  }
}
