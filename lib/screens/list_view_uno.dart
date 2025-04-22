import 'package:flutter/material.dart';

class ListViewUno extends StatelessWidget{
 const ListViewUno({super.key});

 @override
  Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(title: Text("View uno scrren"),),
     body: Center(
       child: Text('ListViewUno'),
     ),
   );
 }
}