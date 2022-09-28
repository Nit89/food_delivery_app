import 'dart:ffi';

import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductController extends GetxController {
  final PopularProductRep popularProductRep;

  PopularProductController({required this.popularProductRep});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRep.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      update();
    } else {}
  }
}
