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
        home: const StartScreen());
  }
}
// sem1  access --- >  https://api.jsonbin.io/b/621dc0c6a703bb67491ef126

// sem2 access --- > https://api.jsonbin.io/b/621dc11c7caf5d67835c5112

// sem3  acess --- >

// sem4  acess --- >

// sem5  acess --- >

// sem6  acess --- >

// sem7  acess --- >

// sem8  acess --- >