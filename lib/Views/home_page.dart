import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // scrollDirection: Axis.vertical,
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
                            "HOME",
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
                  children: [
                    Text(
                      'NEXT TRAINING',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Monday, September 04, 2023',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Meeting : Online (Avaya Space)',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: Get.height*0.01,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Topic : ' + 'Amazon Listing'),
                            Text('Trainer : '+'Tanishka'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Time : '+'11:00AM'),
                            Text('Seats : '+'4/10'),
                          ],
                        ),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.link,
                        size: 20,color: Colors.deepPurple,)),
                        Text("Click to Book your Seat"),
                      ],
                    )
                  ],
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
                  children: [
                    Text("LEADERBOARDS"),
                    SizedBox(
                      height: Get.height,
                      child: ListView.builder(
                         physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context,index){
                        return
                          Column(
                          children: [
                           ListTile(
                             leading: CircleAvatar(

                               backgroundImage: NetworkImage(
                                 'https://as2.ftcdn.net/v2/jpg/03/83/25/83/1000_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg'
                               ),
                             ),
                             title: Text("Ishan",style: TextStyle(
                               fontSize: 23,color: Colors.deepPurple
                             ),) ,
                             subtitle: Text("BDE"),
                             trailing: Text('95 Points',style: TextStyle(
                                 fontSize: 23,color: Colors.deepPurple
                             ),),
                           )
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
