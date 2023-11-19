import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
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
    return
      Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: Get.height * 0.08,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Text(
                    'ATTENDANCE',
                    style: TextStyle(fontSize: 23),
                  ),
                  IconButton(onPressed: () {
                    Get.back();
                  }, icon: Icon(Icons.close))
                ],
              ),
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
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                  _tableRow,
                ],
              ),
            ),
        DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Country')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('John')),
              DataCell(Text('30')),
              DataCell(Text('USA')),
            ]),
            DataRow(cells: [
              DataCell(Text('Alice')),
              DataCell(Text('25')),
              DataCell(Text('Canada')),
            ]),
            DataRow(cells: [
              DataCell(Text('Bob')),
              DataCell(Text('28')),
              DataCell(Text('UK')),
            ]),
          ],
        ),

          ],
        ),
      ),
    );
  }
}
