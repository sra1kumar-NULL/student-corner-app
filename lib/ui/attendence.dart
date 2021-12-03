import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  var attend,perc;
  var textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Attendence"),
      ),
      body: Column(
        children:[FutureBuilder(
            builder: (context,snapshot){
              var d=json.decode(snapshot.data.toString());
              attend=d;
              return Text("");
            },
            future: DefaultAssetBundle.of(context).loadString("assets/attendences.json"),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller:textController ,
             decoration: InputDecoration(
               hintText: "Roll Number",
               border: OutlineInputBorder()
             ),
           ),
         ),
          FlatButton(
            onPressed: () {
              setState(() {
                perc=_findAttendence(textController.text);
              });
            },
            color: Colors.blue,
            child: Text("Search",style: TextStyle(color:Colors.white),),
          ),
          Text(perc==null?"":perc),
        ]
      ),
    );
  }

  _findAttendence(var roll) {
      var index=0;
      index=int.parse(roll.substring(8));
      var fin=attend[index-1]['Perc'];
      debugPrint(fin);
      return fin;
  }
}
