import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductRep extends GetxService {
  final ApiClient apiClient;
  PopularProductRep({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient.getData("");
  }
}
