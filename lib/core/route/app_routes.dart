import 'package:e_commerce_app/presentation/cart/binding/binding.dart';
import 'package:e_commerce_app/presentation/cart/cart_screen.dart';
import 'package:e_commerce_app/presentation/home/binding/binding.dart';
import 'package:e_commerce_app/presentation/home/home_screen.dart';
import 'package:e_commerce_app/presentation/main_screen/binding/binding.dart';
import 'package:e_commerce_app/presentation/product/product_details/binding/binding.dart';
import 'package:e_commerce_app/presentation/product/product_view/product_screen.dart';
import 'package:e_commerce_app/presentation/profile/binding/binding.dart';
import 'package:e_commerce_app/presentation/profile/profile_screen.dart';
import 'package:get/get.dart';

import '../../presentation/auth/login_screen/binding/login_binding.dart';
import '../../presentation/auth/login_screen/login_screen.dart';
import '../../presentation/main_screen/main_screen.dart';
import '../../presentation/product/product_details/product_details_screen.dart';
import '../../presentation/product/product_view/binding/binding.dart';
import '../../presentation/splash/binding/binding.dart';
import '../../presentation/splash/splash_view.dart';

class AppRoutes {
  static const splashScreen = '/splash';
  static const loginScreen = '/login';
  static const mainScreen = '/mainPage';
  static const homeScreen = '/homePage';
  static const productScreen = '/productPage';
  static const cartScreen = '/cartPage';
  static const profileScreen = '/profilePage';
  static const productDetailScreen = '/productDetailPage';
}

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splashScreen,
      binding: SplashBinding(),
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppRoutes.mainScreen,
      binding: MainBinding(),
      page: () => MainScreen(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      binding: LoginBinding(),
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.productScreen,
      binding: ProductBinding(),
      page: () => ProductPage(),
    ),
    GetPage(
      name: AppRoutes.productDetailScreen,
      binding: ProductDetailsBinding(),
      page: () => ProductDetailsPage(),
    ),
    GetPage(
      name: AppRoutes.homeScreen,
      binding: HomeBinding(),
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.cartScreen,
      binding: CartBinding(),
      page: () => CartScreen(),
    ),
    GetPage(
      name: AppRoutes.profileScreen,
      binding: ProfileBinding(),
      page: () => ProfileScreen(),
    ),
  ];
}
