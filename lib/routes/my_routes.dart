import 'package:flutter/material.dart';
import 'package:witgets_pruebas/models/menu_home.dart';
import 'package:witgets_pruebas/screens/screens.dart';
import 'package:witgets_pruebas/widgets/my_home_page.dart';

class MyRoutes {
  static final initialRoute = 'home';

  static final List<MenuOptions> menuOptions = [
    MenuOptions(
      icon: Icons.home,
      menu: 'Home',
      ruta: 'home',
      screen: MyHomePage(),
    ),
    MenuOptions(
      icon: Icons.list_alt,
      menu: 'List View Uno',
      ruta: 'listviewuno',
      screen: ListViewUno(),
    ),
    MenuOptions(
      icon: Icons.line_style,
      menu: 'List View Dos',
      ruta: 'listviewdos',
      screen: ListViewDos(),
    ),
    MenuOptions(
      icon: Icons.casino_rounded,
      menu: 'Tarjeta',
      ruta: 'card',
      screen: CardScreen(),
    ),
    MenuOptions(
      icon: Icons.warning,
      menu: 'Alerta',
      ruta: 'alert',
      screen: AlertScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => MyHomePage(),
    'listviewuno': (context) => ListViewUno(),
    'listviewdos': (context) => ListViewDos(),
    'card': (context) => CardScreen(),
    'alert': (context) => AlertScreen(),
  };
}
