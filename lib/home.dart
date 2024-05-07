import 'package:flutter/material.dart';
import 'package:khaya_practice/Reusable_Widgets/ReusableText.dart';
import 'package:khaya_practice/cofee_prefs.dart';
import 'package:khaya_practice/login.dart';

class Home extends StatelessWidget{
  const Home ({super.key});

@override 
Widget build(BuildContext context){
return Scaffold(
      appBar: AppBar(
        title:const Text("Khaya app"),
       backgroundColor: Colors.brown[700],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            width: 200,
            padding: const EdgeInsets.all(20),
            child: const ReusableText("How Khaya can do programming..."),
          ),
          Container(
            color: Colors.brown[100],
            width: 100,
            padding: const EdgeInsets.all(20),
            child:const  KhayaStrength()
          ),
          Expanded (child: Image.asset('assets/img/cofee_image3.jpg', 
          alignment:Alignment.bottomCenter,
          fit:BoxFit.cover,))
      ],),
    );
}
}

