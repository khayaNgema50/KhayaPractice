import 'package:flutter/material.dart';
import 'package:khaya_practice/home.dart';

void main(){
  runApp( const MaterialApp(
    home: Home(),
  ));
}




class Sandbox extends StatelessWidget{
  const Sandbox ({super.key});

@override 
Widget build(BuildContext context){
return Scaffold(
      appBar: AppBar(
        title:const Text("Sandbox"),
       backgroundColor:  Colors.blue,
      ),
      body: Column(children: [
        Container(
        width:50 ,
        color: Colors.red,
        child: const Text("One"),
        ),
        Container(
        width:100 ,
        color: Colors.blue,
        child: const Text("Two"),
        ),
        Container(
        width:200 ,
        color: Colors.green,
        child: const Text("Three"),
        )
      ],),
    );
}
}