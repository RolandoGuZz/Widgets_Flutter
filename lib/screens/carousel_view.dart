import 'package:flutter/material.dart';

class CarouselViewX extends StatefulWidget {
  const CarouselViewX({super.key});

  @override
  State<CarouselViewX> createState() => _CarouselViewXState();
}

class _CarouselViewXState extends State<CarouselViewX> {
  final CarouselController carouselController = CarouselController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: CarouselView.weighted(
        controller: carouselController,
        shrinkExtent: 200,
        flexWeights: [1, 4, 1],
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku.png'),
            fit: BoxFit.cover,
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/vegeta.png'),
            fit: BoxFit.cover,
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/trunks.png'),
            fit: BoxFit.cover,
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku2.png'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}