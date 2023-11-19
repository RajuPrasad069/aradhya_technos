import 'package:aradhya_techno/Widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../user_profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      // backgroundColor: ,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.white,Colors.tealAccent]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("C O M P A N Y L O G O ",
                    style: Get.textTheme.titleMedium,),
                    SizedBox(height: Get.height*0.08,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontFamily: 'Gilroy-sb',
                              color: Color(0xff181725),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                    SizedBox(height: Get.height*0.005,),
                    TextFormField(

                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please Enter Email or Phone Or UserId";
                        }
                        else if(!value.endsWith("@gmail.com")){
                          return "Please Enter Valid Gmail";
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                        ),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set the filled color to grey
                        hintText: 'Phone number, Username, Email Id',
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                    SizedBox(height: 25),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontFamily: 'Gilroy-sb',
                              color: Color(0xff181725),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                    SizedBox(height: Get.height*0.005,),
                    TextFormField(
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 characters long";
                        } else if (value.length > 32) {
                          return "Password cannot exceed 32 characters";
                        } else if (!value.contains(RegExp(r'[A-Z]'))) {
                          return "Password must contain at least one uppercase letter";
                        } else if (!value.contains(RegExp(r'[a-z]'))) {
                          return "Password must contain at least one lowercase letter";
                        } else if (!value.contains(RegExp(r'[0-9]'))) {
                          return "Password must contain at least one number";
                        } else if (!value.contains(RegExp(r'[!@#\$%^&*()_+=]'))) {
                          return "Password must contain at least one special character like !@#\$%^&*()_+=";
                        } else if (value.contains(RegExp(r'\s'))) {
                          return "Password cannot contain spaces";
                        } else if (value.contains("password")) {
                          return "Avoid using common words like 'password' in your password";
                        } else {
                          return null;
                        }
                      },                  obscureText: passwordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                        ),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.black,width: 1), // Set the enabled border color to white
                        ),
                        filled: true,
                        fillColor: Colors.white, //
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),

                    SizedBox(height: Get.height*0.17,),
                    MyButton(title: 'Log In', onTap: (){

                      if (_formkey.currentState!.validate()) {
                        Get.to(UserProfile());
                      }
                    },bgColor: Colors.blue,),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
