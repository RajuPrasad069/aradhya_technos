import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DpmScreen extends StatefulWidget {
  const DpmScreen({super.key});

  @override
  State<DpmScreen> createState() => _DpmScreenState();
}

class _DpmScreenState extends State<DpmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Container(
            height: Get.height * 0.24,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "",
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      Text(
                        "DPM",
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      Icon(Icons.warning_outlined),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1491349174775-aaafddd81942?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.07,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aarav Gupta",style: TextStyle(
                                  color: Colors.deepPurple,fontSize: 23
                              ),),
                              Text("BDE’s TL"),
                              Text("Active"),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 29,vertical: 5),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //****************  Normal Listing *********
                SizedBox(height: Get.height*0.01,),
                Text(
                  '1. Normal Listing?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.01,),
                TextFormField(
                  // controller: loginController.emailController.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple,width: 1), // Set the enabled border color to white
                    ),
                    filled: true,
                    fillColor: Colors.white, // Set the filled color to grey
                    hintText: '',
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),

                //***************  A Plus ******************
                SizedBox(height: Get.height*0.01,),
                Text(
                  '1.  A Plus?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.01,),
                TextFormField(
                  // controller: loginController.emailController.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple,width: 1), // Set the enabled border color to white
                    ),
                    filled: true,
                    fillColor: Colors.white, // Set the filled color to grey
                    hintText: '',
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),

                //***************  Poa? ******************
                SizedBox(height: Get.height*0.01,),
                Text(
                  '1.  Poa?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.01,),
                TextFormField(
                  // controller: loginController.emailController.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple,width: 1), // Set the enabled border color to white
                    ),
                    filled: true,
                    fillColor: Colors.white, // Set the filled color to grey
                    hintText: '',
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),

                //***************  Calls ******************
                SizedBox(height: Get.height*0.01,),
                Text(
                  '1.  Calls?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.01,),
                TextFormField(
                  // controller: loginController.emailController.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple,width: 1), // Set the enabled border color to white
                    ),
                    filled: true,
                    fillColor: Colors.white, // Set the filled color to grey
                    hintText: '',
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),

                //*************** Infographics ******************
                SizedBox(height: Get.height*0.01,),
                Text(
                  '1. Infographics?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.01,),
                TextFormField(
                  // controller: loginController.emailController.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple,width: 1), // Set the enabled border color to white
                    ),
                    filled: true,
                    fillColor: Colors.white, // Set the filled color to grey
                    hintText: '',
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
                SizedBox(height: Get.height*0.023,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(22)
                      ),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                        child: Text('Submit',style: TextStyle(
                            color: Colors.white
                        ),)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(22)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                        child: Text('Add Task',style: TextStyle(
                          color: Colors.white
                        ),)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(22)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                        child: Text('Reset',style: TextStyle(
                            color: Colors.white
                        ),)),
                  ],
                ),

                SizedBox(height: Get.height*0.02,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
