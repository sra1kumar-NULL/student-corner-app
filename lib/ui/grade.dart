import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GradeCalc extends StatefulWidget {
  const GradeCalc({Key? key}) : super(key: key);

  @override
  _GradeCalcState createState() => _GradeCalcState();
}

class _GradeCalcState extends State<GradeCalc> {
  final rollcontroller = TextEditingController();
  var datalist;
  var gpa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Grade")),
      ),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Roll Number",
              ),
              controller: rollcontroller,
            ),
          ),
          FutureBuilder(
            builder: (context, snapshot) {
              var showData = json.decode(snapshot.data.toString());
              datalist=showData;
              return Text(" ");
            },
            future:
                DefaultAssetBundle.of(context).loadString("assets/marks.json"),
          ),

          FlatButton(
            onPressed: () {
              setState(() {
                gpa =_calculateGrade(rollcontroller.text);
              });

            },
            child: Text("Search"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          Text(
            gpa.toString()
          )

        ],
      )),
    );
  }

  _calculateGrade(var check) {
    var index = 0;
    var numer = 0;
    var denom = 0;
    var showData=datalist;
    debugPrint(showData[index]['Htno'].toString());
    while(showData[index]['Htno']==check){
       if(showData[index]['Grade']=='O'){
            numer+=10*int.parse(showData[index]['Credits']);
            denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='S'){
           numer+=9*int.parse(showData[index]['Credits']);
           denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='A'){
         numer+=8*int.parse(showData[index]['Credits']);
         denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='B'){
         numer+=7*int.parse(showData[index]['Credits']);
         denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='C'){
         numer+=6*int.parse(showData[index]['Credits']);
         denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='D'){
         numer+=5*int.parse(showData[index]['Credits']);
         denom+=10*int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='F'){
         numer+=0;
         denom+=10*int.parse(showData[index]['Credits']);
       }
       index++;
    }
    final result=(numer/denom)*10;
    return result;
  }
}
