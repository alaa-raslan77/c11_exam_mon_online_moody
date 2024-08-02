import 'package:flutter/material.dart';
class ChoiceMood extends StatefulWidget {
   ChoiceMood({super.key});

  @override
  State<ChoiceMood> createState() => _ChoiceMoodState();
}

class _ChoiceMoodState extends State<ChoiceMood> {
  bool isSelected=false;
  String selectedMood = '';



  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildMoodChip( 'assets/images/love.png'),
        SizedBox(width: 10,),
        buildMoodChip( 'assets/images/cool.png'),
        SizedBox(width: 10,),
        buildMoodChip( 'assets/images/happy.png'),
        SizedBox(width: 10,),
        buildMoodChip( 'assets/images/sad.png'),
        SizedBox(width: 26,)
      ],
    );

  }
  Widget buildMoodChip( String assetPath) {
    return ChoiceChip(
      padding: EdgeInsets.only(bottom: 1,left: 1,right: 1,top: 10),

      backgroundColor: Color(0xffE4E7EC),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),side: BorderSide(color: Color(0xffE4E7EC))),

      selected: false,
      label: Column(
        children: [
          Image.asset(assetPath, width:60,fit: BoxFit.fill,),
          SizedBox(height: 10),

        ],
      ),

      onSelected: (bool selected) {
        setState(() {

        });
      },
    );
  }
}
