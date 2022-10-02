import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/popular_food_detail.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

import '../pages/food/recommended_food_detail.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.circularReveal),
    GetPage(
        name: recommendedFood,
        page: () {
          return RecommendedFoodDetail();
        },
        transition: Transition.circularReveal)
  ];
}
