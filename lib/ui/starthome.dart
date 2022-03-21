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
        title: Text("Student Corner",style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF5db075),
      ),
      drawer: Drawer(
        
       child: ListView(
         children: [
            DrawerHeader(
             child: InkWell(
              //  splashColor: Colors.green,
               child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 24),),
               onTap:(){Navigator.pop(context);},
             ),
             decoration: BoxDecoration(
               color:const Color(0xFF5db075),
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
           ListTile(
             title: Text("Profile"),
             onTap: (){
              //  Navigator.push(context,
              //      MaterialPageRoute(builder: (context) => Attendence()));
             },
           ),
         ],
       ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment:MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GradeCalc()));
              },
              child: Container(
                width:100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
            
                      const Icon(Icons.note_alt_outlined),
                      const SizedBox(width: 26,),
                      const Text("Grade Card")
                    ],
            
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Attendence()));
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            
                    const Icon(Icons.card_membership_outlined),
                    const SizedBox(width: 26,),
                    const Text("Attendance")
                  ],
            
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TimeTable()));
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            
                    const Icon(Icons.table_chart_outlined),
                    const SizedBox(width: 30,),
                    const Text("TimeTable")
                  ],
            
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Calender()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                width: 100,
                height: 100,
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            
                   const Icon(Icons.calendar_today_outlined),
                    const SizedBox(width: 36,),
                    const Text("Calendar")
                  ],
            
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            const Icon(Icons.person_outline_rounded),
                    const SizedBox(width: 48,),
                    const Text("Profile")
                  ],
            
                ),
              ),
            ),
            SizedBox(height: 20,),
        
        ],),
      ),
    );
  }
}
