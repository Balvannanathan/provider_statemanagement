import 'package:provider_statemanagement/Helper/Navigations/NavigationConfig.dart';
import 'package:provider_statemanagement/Helper/Utility/ErrorHandling.dart';
import 'package:provider_statemanagement/Pages/OnboardingScreen/OnboardingScreenModel.dart';

class OnboardingScreenVM extends OnboardingScreenModel {
  OnboardingScreenVM() {
    try {
      setCarouselIndex(0);

      setCarouselData([
        {
          'image': 'Illustration1',
          'content': 'Find your  Comfort Food here',
          'description':
              'Here You Can find a chef or dish for every taste and color. Enjoy!',
        },
        {
          'image': 'Illustration2',
          'content': 'Food Ninja is Where Your Comfort Food Lives',
          'description':
              'Enjoy a fast and smooth food delivery at your doorstep',
        },
      ]);
    } on Exception catch (ex) {
      ex.logException();
    }
  }

  void updateCarouselIndex(int index) {
    try {
      (index > 1) ? storeOnboardingDetail() : setCarouselIndex(index);
    } on Exception catch (ex) {
      ex.logException();
    }
  }

  void navigateToHomeScreen() {
    try {
      pushReplace(NavigationConfig.home);
    } on Exception catch (ex) {
      ex.logException();
    }
  }

  Future<void> storeOnboardingDetail() async {
    try {
      await platformLocalStorageService.addData('isFirstTime', true).then((
        value,
      ) {
        navigateToHomeScreen();
      });
    } on Exception catch (ex) {
      ex.logException();
    }
  }
}
