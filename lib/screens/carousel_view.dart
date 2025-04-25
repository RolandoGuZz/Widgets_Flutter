import 'package:flutter/material.dart';
 
class CarouselViewX extends StatelessWidget {
  const CarouselViewX({super.key});
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
   
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
       children: [
        Container(height: size.height * .3, width: double.infinity, color: Colors.red, child: Text('Texto en el container')),
       ],
      ),
    );
  }
}
