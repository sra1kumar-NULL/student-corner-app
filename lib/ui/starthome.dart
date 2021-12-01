import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentcorner/ui/attendence.dart';
import 'package:studentcorner/ui/calender.dart';
import 'package:studentcorner/ui/grade.dart';
import 'package:studentcorner/ui/timetable.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Corner"),
      ),
      drawer: Drawer(
       child: ListView(
         children: [
            DrawerHeader(
             child: InkWell(
               child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 24),),
               onTap:(){Navigator.pop(context);},
             ),
             decoration: BoxDecoration(
               color: Colors.blue,
             ),
           ),
           ListTile(
             title: Text("Grade Cards"),
             onTap: (){
               Navigator.push(context,
               MaterialPageRoute(builder: (context) => GradeCalc()));
             },
           ),
           ListTile(
             title: Text("Academic Calender"),
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => Calender()));
             },
           ),
           ListTile(
             title: Text("Time Table"),
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TimeTable()));
             },
           ),
           ListTile(
             title: Text("Attendence"),
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => Attendence()));
             },
           ),
         ],
       ),
      ),
    );
  }
}
