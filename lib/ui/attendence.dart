import 'package:flutter/material.dart';
class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Attendence"),
      ),
    );
  }
}
