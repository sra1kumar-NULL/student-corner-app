import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:studentcorner/ui/starthome.dart';
import 'package:material_color_gen/material_color_gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: const Color(0xFF5db075).toMaterialColor(),

        ),
        debugShowCheckedModeBanner: false,
        
        home: AnimatedSplashScreen(
          splashTransition:SplashTransition.slideTransition,
          duration: 2000,
          backgroundColor:const Color(0xFF5db075) ,
          splash: 'assets/playstore.png',
      nextScreen: const StartScreen(),
      
      ),
      

        );
  }
}
