import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Table",style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage("assets/timetable.png"),
        ),
      ),
    );
  }
}
