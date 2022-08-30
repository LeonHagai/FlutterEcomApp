import 'package:dson/dson.dart';
import 'package:ecom/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    Response response = await apiClient
        .getData("https://mvs.bslmeiyu.com/api/v1/products/popular");
    String jsonBody = toJson(response.body);
    print("FROM REPO::" + jsonBody);
    return response;
  }
}
