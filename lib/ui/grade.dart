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
  var sem1,sem2,sem3,sem4,sem5,sem6;
  var gpa1,gpa2,gpa3,gpa4,gpa5,gpa6;
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
          FlatButton(
            onPressed: () {
              setState(() {
                gpa1 =_calculateGrade(rollcontroller.text,sem1);
                gpa2 =_calculateGrade(rollcontroller.text,sem2);
                gpa3 =_calculateGrade(rollcontroller.text,sem3);
                gpa4 =_calculateGrade(rollcontroller.text,sem4);
                gpa5 =_calculateGrade(rollcontroller.text,sem5);
                gpa6 =_calculateGrade(rollcontroller.text,sem6);
              });

            },
            child: Text("Search"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          Row(
            children: [
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem1=showData;
                  return Text("");
                },
                future:
                    DefaultAssetBundle.of(context).loadString("assets/cse/sem1.json"),
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem2=showData;
                  return Text("");
                },
                future:
                DefaultAssetBundle.of(context).loadString("assets/cse/sem2.json"),
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem3=showData;
                  return Text("");
                },
                future:
                DefaultAssetBundle.of(context).loadString("assets/cse/sem3.json"),
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem4=showData;
                  return Text("");
                },
                future:
                DefaultAssetBundle.of(context).loadString("assets/cse/sem4.json"),
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem5=showData;
                  return Text("");
                },
                future:
                DefaultAssetBundle.of(context).loadString("assets/cse/sem5.json"),
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  var showData = json.decode(snapshot.data.toString());
                  sem6=showData;
                  return Text("");
                },
                future:
                DefaultAssetBundle.of(context).loadString("assets/cse/sem6.json"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year I Semester 1  :  "),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      gpa1==null?"":gpa1.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year I Semester 2  :  "),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                        gpa2==null?"":gpa2.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year II Semester 1  : "),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                        gpa3==null?"":gpa3.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year II Semester 2  : "),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                        gpa4==null?"":gpa4.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year III Semester 1  :"),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                        gpa5==null?"":gpa5.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Text("Year III Semester 2  :"),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                        gpa6==null?"":gpa6.toStringAsFixed(2)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  _calculateGrade(var check ,var datalist) {
    var index = 0;
    var numer = 0;
    var denom = 0;
    var showData=datalist;
    var subs=0;
    var i=showData.length-1;
    var subfin=showData[i]['Htno'];
    while(showData[i]['Htno']==subfin){
      i--;
      subs++;
    }
    debugPrint(subs.toString());
    if(check.substring(0,5)=="19035"){
      index=index+53*subs;
      while(showData[index]['Htno']!=check){
        index++;
      }
      if(index>=showData.length-1){
        index=showData.length-1;
      }
    }
    else{
      int x=int.parse(check.substring(8));
      index=index+(x-1)*subs;
      while(showData[index]['Htno']!=check){
        index+=1;
      }
      if(index>=showData.length-1){
        index=showData.length-1;
      }
    }
    while(showData[index]['Htno']==check){
       if(showData[index]['Grade']=='O'){
            numer+=10*int.parse(showData[index]['Credits']);
            denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='S'){
           numer+=9*int.parse(showData[index]['Credits']);
           denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='A'){
         numer+=8*int.parse(showData[index]['Credits']);
         denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='B'){
         numer+=7*int.parse(showData[index]['Credits']);
         denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='C'){
         numer+=6*int.parse(showData[index]['Credits']);
         denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='D'){
         numer+=5*int.parse(showData[index]['Credits']);
         denom+=int.parse(showData[index]['Credits']);
       }
       if(showData[index]['Grade']=='F'){
         numer+=0;
         denom+=int.parse(showData[index]['Credits']);
       }

       if(index>=showData.length-1){
         index=showData.length-1;
         break;
       }
       index+=1;
    }
    final result=numer/denom;
    debugPrint(result.toString());
    return result;
  }
}
