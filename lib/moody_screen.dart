import 'package:c11_exam_mon_moody/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'choice_chip.dart';
import 'exercise.dart';

class MoodyScreen extends StatefulWidget {
  static const String routeName ="home";
  const MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
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
              child: Icon(Icons.notifications_none_outlined,size: 30,),
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
            ChoiceMood(),
            Row(children: [
              SizedBox(width: 20,),
              Text('Love',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.Primary)),
              SizedBox(width: 60,),

              Text('Cool',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.Primary)),
              SizedBox(width: 60,),

              Text('Happy',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.Primary)),
              SizedBox(width: 50,),

              Text('Sad',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.Primary)),
            ],),
            SizedBox(height: 20,),
            Row(children: [
              Text('Feature',style:
            GoogleFonts.inter(fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.Primary)),
              Spacer(),

              Text('see more',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF027A48))),
              Icon(Icons.navigate_next,color: Color(0xff027A48),),
              SizedBox(width: 33,)
            ],),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 17),
              margin: EdgeInsets.only(left: 10),

              width: 326,
              height: 168,
              decoration: BoxDecoration(
                  color: Color(0xffECFDF3),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Positive vibes",style:
                      GoogleFonts.inter(fontSize: 16,
                        fontWeight: FontWeight.w600,)),
                      Text("""Boost your mood with 
positive vibes""",textAlign: TextAlign.start,style:
                      GoogleFonts.inter(fontSize: 16,
                        fontWeight: FontWeight.w400,)),
                     Row(children: [
                       Icon(Icons.play_circle_fill_rounded,color: Color(0XFF027A48),),
                       Text("10 mins",style:
                       GoogleFonts.inter(fontSize: 16,
                         fontWeight: FontWeight.w600,)),
                     ],)
                    ],
                  ),
                  Column(
                    children: [Padding(
                      padding: const EdgeInsets.only(right:30,top: 30),
                      child: Image.asset("assets/images/person.png"),
                    )],
                  )
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only( top: 7,left: 150),
              child: SmoothPageIndicator(
                  controller: controller,
                  count:  3,
                  effect:  SlideEffect(dotColor: Colors.grey,dotHeight: 6,dotWidth: 6),
                  onDotClicked: (index){
                  }
              ),
            ),
            SizedBox(height: 40,),
            Row(children: [
              Text('Exercise',style:
              GoogleFonts.inter(fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.Primary)),
              Spacer(),

              Text('see more',style:
              GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF027A48))),
              Icon(Icons.navigate_next,color: Color(0xff027A48),),
              SizedBox(width: 33,)
            ],),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              Column(children: [
                Exercise(color: Color(0xffF9F5FF),icon: "assets/images/relaxation.png",text: "Relaxation",),
                SizedBox(height: 20,),
                Exercise(icon:"assets/images/breating.png", color:  Color(0xffFFFAF5), text: "Breathing"),
              ],),
              Column(children: [
                Exercise(icon:"assets/images/meditation.png" , color: Color(0xffFDF2FA), text: "Meditation"),
                SizedBox(height: 20,),
                Exercise(icon: "assets/images/yoga.png", color: Color(0xffF0F9FF), text: "Yoga"),
              ],),
                SizedBox(width: 20,)
            ],)

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/home.png",)),label: "Home",),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/Icon.png")),label: "Search"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/calendar.png")),label: "Document"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/user.png")),label: "Document"),
        ],
      ),

    );
  }
}
