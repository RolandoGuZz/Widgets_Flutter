import 'package:flutter/material.dart';
import 'package:witgets_pruebas/models/menu_home.dart';
import 'package:witgets_pruebas/screens/screens.dart';
import 'package:witgets_pruebas/widgets/my_home_page.dart';

class MyRoutes {
  static final initialRoute = 'home';

  static final List<MenuOptions> menuOptions = [
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
    MenuOptions(
      icon: Icons.quick_contacts_dialer_outlined,
      menu: 'Card image',
      ruta: 'cardImage',
      screen: CardImage(),
    ),
    MenuOptions(
      icon: Icons.view_carousel_outlined,
      menu: 'Go Carousel View',
      ruta: 'carouselview',
      screen: CarouselViewX(),
    ),
    MenuOptions(
      icon: Icons.input_sharp,
      menu: 'Input Fields',
      ruta: 'inputfield',
      screen: InputFieldScreen(),
    ),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => MyHomePage(),
  //   'listviewuno': (context) => ListViewUno(),
  //   'listviewdos': (context) => ListViewDos(),
  //   'card': (context) => CardScreen(),
  //   'alert': (context) => AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> routes(){
    Map<String, Widget Function(BuildContext)> t = {};
    t.addAll({'home': (BuildContext c) => MyHomePage()});
    for (var element in menuOptions) {
      t.addAll({element.ruta: (BuildContext c) => element.screen});
    }
    return t;
  }
}
