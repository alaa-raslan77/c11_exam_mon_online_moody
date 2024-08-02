import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Exercise extends StatelessWidget {
  String icon ;
  Color color;
  String text;
  Exercise({super.key,required this.icon,required this.color,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height:56 ,
      width:151 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
          color: color//Color(0xffF9F5FF)
      ),
      child: Row(children: [
        Image.asset(icon),
        Text(text,style:
        GoogleFonts.inter(fontSize: 16,
          fontWeight: FontWeight.w500,))

      ],),
    );
  }
}
