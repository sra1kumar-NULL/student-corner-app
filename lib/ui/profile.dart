import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5db075),
        title: Text("Profile",style: TextStyle(color: Colors.white)),
      ),
      
      body: SingleChildScrollView(
        child: Column(children: [
      
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                  color: const Color(0xFF5db075),
                
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image.asset("assets/user-profile.jpg")),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                  color: const Color(0xFF5db075),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Username       :",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/4 ,
                    ),
                    Text(" "),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                  color: const Color(0xFF5db075),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                    Text("Roll Number   :",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/4 ,
                    ),
                    Text(" "),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                  color: const Color(0xFF5db075),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Department    :",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/4 ,
                    ),
                    Text(" "),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Made with ❤ by Mr.S and Team",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: const Color(0xFF5db075)
            ),)

        ],),
      ),
    
    );
  }
}