import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key, required this.size, required this.imageUrl});

  final Size size;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: size.height * .3,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(.5),
        ),
        //color: Colors.red,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/$imageUrl'),
            // image: NetworkImage(
            //   'https://images.pexels.com/photos/165754/pexels-photo-165754.jpeg',
            // ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
