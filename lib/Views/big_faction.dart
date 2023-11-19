import 'package:aradhya_techno/Views/AuthScreens/login_screen.dart';
import 'package:aradhya_techno/Views/attendence_screen.dart';
import 'package:aradhya_techno/Views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigFaction extends StatefulWidget {
  const BigFaction({super.key, required int index});

  @override
  State<BigFaction> createState() => _BigFactionState();
}

class _BigFactionState extends State<BigFaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Big Faction",style: TextStyle(
              fontSize: 33,color: Colors.deepPurple,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: Get.height*0.015,),
            Divider(
              thickness: 1.5,color: Colors.black,
            ),
            SizedBox(height: Get.height*0.035,),
            TextButton(onPressed: (){
              Get.to(ProfileScreen());
            }, child: Text("Profile",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),),
            SizedBox(height: Get.height*0.027,),
            Text("Notification",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),
            SizedBox(height: Get.height*0.027,),
            Text("Training & Presentation",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),
            SizedBox(height: Get.height*0.027,),
            TextButton(onPressed: (){
              Get.to(AttendanceScreen());
            }, child: Text("Attendence",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),),
            SizedBox(height: Get.height*0.027,),
            Text("DPM",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),
            SizedBox(height: Get.height*0.027,),
            Text("My Records",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),
            SizedBox(height: Get.height*0.027,),
            Text("Help",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),
            SizedBox(height: Get.height*0.027,),
            TextButton(onPressed: (){
              Get.to(LoginScreen());
            }, child: Text("Logout",style: TextStyle(
              fontSize: 23,color: Colors.black,
            ),),),
            SizedBox(height: Get.height*0.027,),
          ],
        ),
      ),
    );
  }
}
