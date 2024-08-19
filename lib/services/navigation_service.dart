import 'package:chat_bot/pages/home_page.dart';
import 'package:chat_bot/pages/login_page.dart';
import 'package:chat_bot/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class NavigationService {
  late GlobalKey<NavigatorState> _navigatorkey;
  final Map<String, Widget Function(BuildContext)> _routes = {
    "/login": (context) => LoginPage(),
    "/register": (context) => RegisterPage(),
    "/home": (context) => HomePage(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigatorkey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }

  NavigationService() {
    _navigatorkey = GlobalKey<NavigatorState>();
  }

  void push(MaterialPageRoute route) {
    _navigatorkey.currentState?.push(route);
  }

  void pushName(String routeName) {
    _navigatorkey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    _navigatorkey.currentState?.pushReplacementNamed(routeName);
  }

  void goBack() {
    _navigatorkey.currentState?.pop();
  }
}
