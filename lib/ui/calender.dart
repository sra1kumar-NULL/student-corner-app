import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic Calendar",style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child:PhotoView(
          imageProvider: AssetImage("assets/calender.png"),
        )
      ),
    );
  }
}
