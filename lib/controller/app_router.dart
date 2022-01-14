import 'package:flutter/material.dart';
import 'package:material_depo/screens/about/about_screen.dart';
import 'package:material_depo/screens/cart/cart_screen.dart';
import 'package:material_depo/screens/landing/landing_screen.dart';
import 'package:material_depo/screens/splash_screen/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final Object? key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case LandingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case AboutScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case CartScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      default:
        return null;
    }
  }
}

final AppRouter appRouter = AppRouter();
