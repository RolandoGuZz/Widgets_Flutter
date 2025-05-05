import 'package:flutter/material.dart';
import 'package:witgets_pruebas/screens/container_image.dart';

class CarouselViewX extends StatefulWidget {
  const CarouselViewX({super.key});

  @override
  State<CarouselViewX> createState() => _CarouselViewXState();
}

class _CarouselViewXState extends State<CarouselViewX> {
  CarouselController carouselController = CarouselController(
    initialItem: 2,
  ).animateTo(150, duration: Duration(seconds: 20), curve: Curves.bounceInOut) as CarouselController;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //ContainerImage(size: size, imageUrl: 'goku.png'),
            CarouselView(
              controller: carouselController,
              itemExtent: 200,
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: AssetImage('assets/images/goku.png'),
                ),
                FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: AssetImage('assets/images/vegeta.png'),
                ),
                FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: AssetImage('assets/images/trunks.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
