import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../AuthScreens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Get.to(LoginScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
            child: SizedBox(
                child: Image.asset('assets/images/company_logo.jpg')
            ),
        ),
    );
  }
}
