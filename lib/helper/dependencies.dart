import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://wwww.dbestech.com"));

  //repos
  Get.lazyPut(() => PopularProductRep(apiClient: Get.find()));

  //controllers

  Get.lazyPut(() => PopularProductController(popularProductRep: Get.find()));
}
