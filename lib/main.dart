import 'package:flutter/material.dart';
import 'package:witgets_pruebas/routes/my_routes.dart';
import 'package:witgets_pruebas/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: ListViewDos(),
      initialRoute: MyRoutes.initialRoute,
      theme: ThemeApp.primaryTheme(),
      routes: MyRoutes.routes,
    );
  }
}
