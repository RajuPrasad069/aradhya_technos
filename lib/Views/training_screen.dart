import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        "Training",
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
            padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
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
                Text(
                  'UPCOMING TRAINING',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: Get.height*0.02,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'company_logo.jpg',
                      )
                    ),
                    SizedBox(width: Get.width*0.03,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Training - Amazon Listing',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Trainer - [User Name]',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Date - 15/09/2023, 05:00PM',
                          style: TextStyle(fontSize: 16),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: Get.height*0.01,),
                Divider(
                  thickness: 0.4,color: Colors.black,
                ),
                SizedBox(height: Get.height*0.015,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: Get.width*0.03,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Training - Amazon A+',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Trainer - [User Name]',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Date - 15/09/2023, 05:00PM',
                          style: TextStyle(fontSize: 16),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: Get.height*0.01,),
                Divider(
                  thickness: 0.4,color: Colors.black,
                ),

                SizedBox(height: Get.height*0.015,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: Get.width*0.03,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Training - Amazon store',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Trainer - [User Name]',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Date - 15/09/2023, 05:00PM',
                          style: TextStyle(fontSize: 16),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: Get.height*0.01,),
                Divider(
                  thickness: 0.4,color: Colors.black,
                ),

              ],
            ),
          ),
        ],
      )
    );
  }
}
