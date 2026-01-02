import 'package:get_it/get_it.dart';
import 'package:provider_statemanagement/Helper/Navigations/NavigationMixin.dart';
import 'package:provider_statemanagement/Service/PlatformLocalStorageService/IPlatformLocalStorageService.dart';

class SplashScreenModel with NavigationMixin {
  final IPlatformLocalStorageService platformLocalStorageService = GetIt
      .instance
      .get<IPlatformLocalStorageService>();
}
