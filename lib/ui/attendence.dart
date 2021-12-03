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
              var d=snapshot.data.toString();
              attend=d;
              return Text("");
            },
            future: DefaultAssetBundle.of(context).loadString("assets/attendences.json"),
        ),
         TextField(
           controller:textController ,
           decoration: InputDecoration(
             hintText: "Roll Number",
             border: OutlineInputBorder()
           ),
         ),
          FlatButton(
            onPressed: () {
              perc=_findAttendence(textController.text);
            },
            child: Text("Search"),
          ),
          Text(perc==null?"":perc),
        ]
      ),
    );
  }

  _findAttendence(var roll) {
      var index=0;
      index=int.parse(roll.substring(8));
      debugPrint(index.toString());
      debugPrint(attend[1].toString());
      debugPrint(attend[1]["Perc"]);
      //var fin=attend[index-1]['Perc'];
      //debugPrint(fin);
      //return fin;
  }
}
