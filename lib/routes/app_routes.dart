import 'package:flutter/material.dart';
import 'package:vehicleapp/presentation/log_in_page_screen/log_in_page_screen.dart';
import 'package:vehicleapp/presentation/add_vehicle_screen/add_vechicle_screen.dart';

class AppRoutes {
  static const String logInPageScreen = '/log_in_page_screen';
  static const String addVehicleScreen = '/add_vehicle_screen';

  static Map<String, WidgetBuilder> routes = {
    logInPageScreen: (context) => LogInPageScreen(),
    addVehicleScreen: (context) => AddVehicleScreenWidget(),
  };
}
