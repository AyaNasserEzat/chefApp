import 'package:chefapp/feature/auth/presentation/screens/chang_lang_screen.dart';
import 'package:chefapp/feature/auth/presentation/screens/login_screen.dart';
import 'package:chefapp/feature/auth/presentation/screens/send_code_screen.dart';
import 'package:chefapp/feature/auth/presentation/screens/splash_screen.dart';
import 'package:chefapp/feature/menu/presentation/screens/add_meal_screen.dart';
import 'package:chefapp/feature/profile/presentation/screens/change_pass_screen.dart';
import 'package:chefapp/feature/profile/presentation/screens/profile_home_screen.dart';
import 'package:chefapp/feature/profile/presentation/screens/setting_screen.dart';
import 'package:chefapp/feature/profile/presentation/screens/update_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/auth/presentation/screens/reset_password_screen.dart';

class Routs {
  static const String initialRoute = '/';
  static const String changeLang = '/changeLang';
  static const String login = '/login';
  static const String restPassword = '/restPassword';
  static const String sendcode = '/sendcode';
  static const String splash = '/splash';
  static const String menueHome = '/menueHome';
  static const String addMeal = '/addMeal';
  static const String changePasswoed = '/changePasswoed';
  static const String profileHome = '/profileHome';
  static const String setting = '/setting';
  static const String updateProfile = '/updateProfile';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routs.initialRoute:
        return MaterialPageRoute(builder: (context) => const SlpashScreen());
      case Routs.addMeal:
        return MaterialPageRoute(builder: (context) => const addMealScreen());
      case Routs.changeLang:
        return MaterialPageRoute(
            builder: (context) => const changeLangScreen());
      case Routs.login:
        return MaterialPageRoute(builder: (context) => const loginScreen());
      case Routs.sendcode:
        return MaterialPageRoute(builder: (context) => const SendCodeScreen());
      case Routs.restPassword:
        return MaterialPageRoute(
            builder: (context) => const RestPasswordScreen());
      case Routs.profileHome:
        return MaterialPageRoute(
            builder: (context) => const profileHomeScreen());
      case Routs.changePasswoed:
        return MaterialPageRoute(
            builder: (context) => const ChangePasswordscreen());
      case Routs.setting:
        return MaterialPageRoute(builder: (context) => const settingScreen());
      case Routs.updateProfile:
        return MaterialPageRoute(builder: (context) => const updateScreen());
    }
  }
}
