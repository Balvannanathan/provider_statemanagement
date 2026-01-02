import 'package:provider_statemanagement/Helper/Navigations/NavigationConfig.dart';
import 'package:provider_statemanagement/Helper/Utility/ErrorHandling.dart';
import 'package:provider_statemanagement/Pages/SplashScreen/SplashScreenModel.dart';

class SplashScreenVM extends SplashScreenModel {
  Future<void> checkIsFirstTimeUser() async {
    try {
      var result = await platformLocalStorageService.getData('isFirstTime');

      if (result != null && result) {
        navigateToHomeScreen();
      } else {
        navigateToOnboardingScreen();
      }
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

  void navigateToOnboardingScreen() {
    try {
      pushReplace(NavigationConfig.onboarding);
    } on Exception catch (ex) {
      ex.logException();
    }
  }
}
