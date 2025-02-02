import 'package:flutter/material.dart';
import 'package:infoodmacion_app/presentation/screens/food_establishment_screen.dart';
import '../../presentation/screens/screens.dart';

class AppRouter {

  static const String initialRoute = '/';

  static Map<String, Widget Function(BuildContext context)> routes = {
    '/' : (BuildContext context) => const MainView(),
    '/foods-establishments': (BuildContext context) => const FoodsEstablishmentsScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/food-establishment':
        return MaterialPageRoute(builder: (context) => FoodEstablishmentScreen(
          id: (settings.arguments as Map<String, dynamic>?)?['id'] ?? -1,
          name: (settings.arguments as Map<String, dynamic>?)?['name'] ?? "DESCONOCIDO",
          url: (settings.arguments as Map<String, dynamic>?)?['image'] ?? "",
        ));
    }
    return null;
  }

}