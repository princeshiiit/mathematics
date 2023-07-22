import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicleapp/theme/theme_helper.dart';
import 'package:vehicleapp/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Vehicle App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.logInPageScreen,
      routes: AppRoutes.routes,
    );
  }
}
