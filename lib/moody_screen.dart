import 'package:c11_exam_mon_moody/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class MoodyScreen extends StatelessWidget {
  static const String routeName ="home";
  const MoodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 95,
        leading:  Padding(
          padding: const EdgeInsets.only(top: 40,left: 35),
          child: Image.asset("assets/images/logo.png",),
        ),
        leadingWidth: 70,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 40,left: 15),
          child: Text("Moody",style:
          TextStyle(fontFamily: 'CampaignSansSerif',
              fontSize: 26,fontWeight: FontWeight.w400)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 40,right: 30),
            child: badges.Badge(
              badgeContent: Text('7'),
              child: Icon(Icons.notifications_none_outlined),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35,top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hello,",style:
                GoogleFonts.inter(fontSize: 20,
                  fontWeight: FontWeight.w400,
                color: AppColors.Primary),),
                Text("Sara Rose",style:
                GoogleFonts.inter(fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.Primary),),
              ],
            ),
            SizedBox(height: 10,),
            Text("How are you feeling today",style:
            GoogleFonts.inter(fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.Primary),),
            Row(children: [

            ],)
          ],

        ),
      ),
    );
  }
}
