import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/SplashScreen/splash_screen.dart';
import 'Views/attendence_screen.dart';
import 'Views/big_faction.dart';
import 'Views/profile_screen.dart';
import 'Views/your_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

