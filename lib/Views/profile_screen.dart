import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: Get.height*0.08,width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Text('Profile',style: TextStyle(
                    fontSize: 23
                  ),),
                  IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close))
                ],
              ),
            ),
            SizedBox(height: Get.height*0.025,),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 10),
              //padding: EdgeInsets.symmetric(horizontal: 200,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height*0.035,),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1698628248~exp=1698628848~hmac=8ad071fd1bf70263776ef2677674d0171abe2b0543f85be77df62ccf8cca1fed'
                        ),
                        radius: 56,
                      ),
                      Positioned(
                          top: 68,right: 1,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,
                          size:33,)))
                    ] 
                  ),
                  SizedBox(height: Get.height*0.035,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Designation - ",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                      Text("BDE’s TL",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: Get.height*0.027,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Attendance Score - ",style: TextStyle(
                      fontSize: 23,color: Colors.black,
                    ),),
                    Text("79%",style: TextStyle(
                      fontSize: 23,color: Colors.black,
                    ),),
                  ],
                ),
                  SizedBox(height: Get.height*0.027,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Work Score - ",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                      Text("82%",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: Get.height*0.027,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("PF Enro - ",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                      Text("Yes",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: Get.height*0.027,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Salary - ",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),
                      Text("20,000",style: TextStyle(
                        fontSize: 23,color: Colors.black,
                      ),),

                    ],

                  ),
                  SizedBox(height: Get.height*0.077,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
