import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("heleo");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).Products);
      //print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print('error');
    }
  }
}
