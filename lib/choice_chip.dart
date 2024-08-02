import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
class ChoiceMood extends StatefulWidget {
   ChoiceMood({super.key});

  @override
  State<ChoiceMood> createState() => _ChoiceMoodState();
}

class _ChoiceMoodState extends State<ChoiceMood> {
  int tag = 3;
  List<String> options = [
    'News', 'Entertainment', 'Politics',
    'Automotive', 'Sports', 'Education',
    'Fashion', 'Travel', 'Food', 'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        CircleAvatar(backgroundImage: AssetImage("assets/images/love.png"),radius: 35,),
        SizedBox(width: 20,),
        CircleAvatar(backgroundImage: AssetImage("assets/images/cool.png"),radius: 35,),
          SizedBox(width: 20,),

        CircleAvatar(backgroundImage: AssetImage("assets/images/happy.png"),radius: 35,),
          SizedBox(width: 20,),

        CircleAvatar(backgroundImage: AssetImage("assets/images/sad.png"),radius: 35,),
          SizedBox(width: 28,),

      ],),
    );

  }
}
