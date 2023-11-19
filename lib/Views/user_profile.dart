import 'package:aradhya_techno/Widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BottomNaviBar/crm_tab_bar_view.dart';
import 'home_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.08,),
              Text("C O M P A N Y ",
                style: Get.textTheme.displaySmall,),
              SizedBox(height: Get.height*0.18,),
              Text("Welcome",
                style: Get.textTheme.displaySmall,),
              SizedBox(height: Get.height*0.07,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100)
                ),
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
              ),
              SizedBox(height: Get.height*0.04,),
              Text("[USER NAME]",
                style: Get.textTheme.displaySmall,),
              SizedBox(height: Get.height*0.08,),
              MyButton(title: 'Continue', onTap: (){
                Get.to(CustomTabBarView(index: 0,));
              },bgColor: Colors.deepPurple,),
            ],
          ),
        ),
      ),
    );
  }
}
