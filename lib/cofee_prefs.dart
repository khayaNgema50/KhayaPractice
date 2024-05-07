
import 'package:flutter/material.dart';
import 'package:khaya_practice/Reusable_Widgets/ReusableButton.dart';
import 'package:khaya_practice/Reusable_Widgets/ReusableText.dart';

class KhayaStrength extends StatefulWidget {
  const KhayaStrength({super.key});

  @override
  State<KhayaStrength> createState() => _KhayaStrengthState();
}

class _KhayaStrengthState extends State<KhayaStrength> {

 int strength = 1;
 int sugar = 1;

 void increaseStrength(){
  setState((){
    strength = strength <5 ? strength +1:1 ;
  });
 }

  void increaseSugar(){
    setState((){
  sugar = sugar <5 ? sugar +1:1 ;
    });
 }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
         const ReusableText("Strength: "),
        for (int i = 0; i < strength; i++)
        Image.asset('assets/img/cofee_image1.jpg', 
         width : 25,
         height: 25,
         colorBlendMode: BlendMode.multiply,),
        const Expanded(child: SizedBox(width: 50,)),
        ReusableButton(
          onPressed: increaseStrength, 
          child: const Text("+"))
        ],),
       Row(
        children: [
        const ReusableText("Sugar: "),
        for (int i=0; i< sugar; i++)
        Image.asset('assets/img/cofee_image2.jpg', 
         width : 25,
         height: 25,
         colorBlendMode: BlendMode.multiply,),
        const Expanded(child: SizedBox(width: 50,)),
        ReusableButton(
          onPressed: increaseSugar, 
          child: const Text("+"))
        ],)
      ],);
  }
}