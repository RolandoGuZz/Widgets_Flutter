import 'package:flutter/material.dart';

class MenuOptions {
  final IconData icon;
  final String menu;
  final String ruta;
  final Widget screen;

  MenuOptions({
    required this.icon,
    required this.menu,
    required this.ruta,
    required this.screen,
  });
}
