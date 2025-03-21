import 'package:flutter/material.dart';
import '../views/login_page.dart';
import '../views/home_page.dart';
import '../views/register_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginPage(),
    register: (context) => const RegisterPage(),
    home: (context) => const HomePage(),
  };
}
