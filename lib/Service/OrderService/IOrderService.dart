import 'package:provider_statemanagement/BOs/ProductBO/ProductBO.dart';
import 'package:provider_statemanagement/BOs/RestaurantBO/RestaurantBO.dart';

abstract class IOrderService {
 Future<List<ProductBO>> getAllProducts();

 Future<List<RestaurantBO>> getAllRestaurants();

 Future<List<ProductBO>> getProductDetailById();

 Future<List<RestaurantBO>> getRestaurantDetailById();
}