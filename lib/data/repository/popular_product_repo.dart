import 'package:dson/dson.dart';
import "package:http/http.dart" as http;

import '../../models/products_model.dart';

class PopularProductRepo {
  // final ApiClient apiClient;
  // PopularProductRepo({required this.apiClient});
  static var client = http.Client();

  // Future<List<Product>> getPopularProductList() async {
  //   var response = await client
  //       .get(Uri.parse('https://www.dbestech.com/api/product/list'));

  //   // Response response = await apiClient
  //   //     .getData("https://mvs.bslmeiyu.com/api/v1/products/popular");
  //   String jsonBody = toJson(response.body);
  //   print("FROM REPO::" + jsonBody);
  //   return response;
  // }
}
