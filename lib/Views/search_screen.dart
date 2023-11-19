import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
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
                          "Search",
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
            SizedBox(height: Get.height*0.007,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey[200],
                ),
                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: 'Search by name and department',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontSize: 16.0),
                  onChanged: (value) {
                    // Implement your search functionality here
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
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
              child: SizedBox(
                height: Get.height,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: CircleAvatar(
                          radius:25,
                          backgroundImage: NetworkImage(
                              'https://as2.ftcdn.net/v2/jpg/03/83/25/83/1000_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg'
                          ),
                        ),
                        title: Text("Ishan",style: TextStyle(
                            fontSize: 23,color: Colors.deepPurple
                        ),) ,
                        subtitle: Text("BDE"),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios),
                        )
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
