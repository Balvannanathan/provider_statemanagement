import 'package:provider_statemanagement/BOs/ProductBO/ProductBO.dart';
import 'package:provider_statemanagement/BOs/RestaurantBO/RestaurantBO.dart';
import 'package:provider_statemanagement/Helper/Utility/ErrorHandling.dart';
import 'package:provider_statemanagement/Pages/HomeScreen/HomeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  HomeScreenVM() {
    try {
      setSelectedIndex(0);

      setProductList([
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
      ]);

      setRestaurantList([
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
      ]);
    } on Exception catch (ex) {
      ex.logException();
    }
  }

  void updateSelectedIndex(int index) {
    try {
      setSelectedIndex(index);
    } on Exception catch (ex) {
      ex.logException();
    }
  }
}
