import 'package:e_commerce_app/core/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/shared_pref.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppPages.routes,
    );
  }
}
