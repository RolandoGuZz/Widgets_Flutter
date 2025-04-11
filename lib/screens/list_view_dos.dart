import 'package:flutter/material.dart';

class ListViewDos extends StatelessWidget {
  const ListViewDos({super.key});

  @override
  Widget build(BuildContext context) {

    final primary = Theme.of(context).iconTheme.color;

    List<String> foods = [
      'Mole',
      'Entomatadas',
      'Tacos',
      'Tlayuda',
      'Tamales',
      'Quesadillas',
      'Huevos',
      'Tasajo',
      'Enchiladas',
      'Enfrijoladas',
      'Chilaquiles',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets review', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (_, i) {
          return ListTile(
            leading: Icon(Icons.fastfood, color: primary),
            title: Text('${foods[i]}'),
            trailing: Icon(Icons.navigate_next, color: primary),
            onTap: () => print('hola ${foods[i]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle_outline, color: Colors.white, size: 35),
      ),
    );
  }
}
