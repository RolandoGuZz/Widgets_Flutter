import 'package:flutter/material.dart';
import 'package:witgets_pruebas/routes/my_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).iconTheme.color;
    
    final menuOptions = MyRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home app', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: primary,),
          title: Text(menuOptions[i].menu, style: TextStyle(color: primary),),
          trailing: Icon(Icons.navigate_next_outlined, color: primary,),
          onTap: () => Navigator.pushNamed(context, menuOptions[i].ruta),
        ),
        separatorBuilder: (context, i) => Divider(),
        itemCount: menuOptions.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle_outline, color: Colors.white, size: 35),
      ),
    );
  }
}
