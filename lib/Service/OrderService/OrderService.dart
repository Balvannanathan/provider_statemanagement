import 'package:provider_statemanagement/BOs/ProductBO/ProductBO.dart';
import 'package:provider_statemanagement/BOs/RestaurantBO/RestaurantBO.dart';
import 'package:provider_statemanagement/Service/OrderService/IOrderService.dart';

class OrderService implements IOrderService {
  @override
  Future<List<ProductBO>> getAllProducts() async {
    return [
      ProductBO(
        id: '1',
        name: 'Vegan Resto',
        image: 'product1.png',
        price: 7,
        restaurantName: 'Warung Herbal',
      ),
      ProductBO(
        id: '2',
        name: 'Fruit Salad',
        image: 'product2.png',
        price: 5,
        restaurantName: 'Wijie Resto',
      ),
      ProductBO(
        id: '3',
        name: 'Green Noddle',
        image: 'product3.png',
        price: 15,
        restaurantName: 'Noodle Home',
      ),
    ];
  }

  @override
  Future<List<RestaurantBO>> getAllRestaurants() async {
    return [
      RestaurantBO(
        id: '1',
        name: 'Vegan Resto',
        arrivingTime: 20,
        image: 'Restaurant Image1.png',
      ),
      RestaurantBO(
        id: '2',
        name: 'Healthy Food',
        arrivingTime: 25,
        image: 'Restaurant Image2.png',
      ),
      RestaurantBO(
        id: '3',
        name: 'Good Food',
        arrivingTime: 30,
        image: 'Restaurant Image3.png',
      ),
      RestaurantBO(
        id: '4',
        name: 'Smart Resto',
        arrivingTime: 30,
        image: 'Restaurant Image4.png',
      ),
      RestaurantBO(
        id: '5',
        name: 'Vegan Resto',
        arrivingTime: 30,
        image: 'Restaurant Image5.png',
      ),
      RestaurantBO(
        id: '6',
        name: 'Healthy Food',
        arrivingTime: 30,
        image: 'Restaurant Image6.png',
      ),
    ];
  }

  @override
  Future<List<ProductBO>> getProductDetailById() {
    throw UnimplementedError();
  }

  @override
  Future<List<RestaurantBO>> getRestaurantDetailById() {
    throw UnimplementedError();
  }
}
