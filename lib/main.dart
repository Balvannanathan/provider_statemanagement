import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider_statemanagement/App.dart';
import 'package:provider_statemanagement/Service/PlatformLocalStorageService/IPlatformLocalStorageService.dart';
import 'package:provider_statemanagement/Service/PlatformLocalStorageService/PlatformLocalStorageService.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<IPlatformLocalStorageService>(
    PlatformLocalStorageService(),
  );
  runApp(const MyApp());
}
