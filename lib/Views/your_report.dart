import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourReport extends StatefulWidget {
  const YourReport({super.key});

  @override
  State<YourReport> createState() => _YourReportState();
}

class _YourReportState extends State<YourReport> {
  TableRow _tableRow = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(5),
      child: Text("Data"),
    ),
    Padding(
      padding: EdgeInsets.all(5),
      child: Text("Present / Absent"),
    )
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
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
                                Text(
                                  "Aarav Gupta",
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 23),
                                ),
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
              height: Get.height * 0.025,
            ),
            SizedBox(
              height: Get.height * 0.025,
            ),
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
