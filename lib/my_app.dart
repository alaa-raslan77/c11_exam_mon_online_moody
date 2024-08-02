import 'package:flutter/material.dart';

import 'moody_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyScreen.routeName,
      routes: {
        MoodyScreen.routeName:(context)=>MoodyScreen(),

      },
    );
  }
}
