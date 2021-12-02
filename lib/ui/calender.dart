import 'package:flutter/material.dart';
class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic Calendar"),
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/calender.png"),
        ),
      ),
    );
  }
}
