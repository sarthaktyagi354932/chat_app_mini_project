import 'package:chat_app_mini_project/views/chat_page.dart';
import 'package:chat_app_mini_project/views/home.dart';
import 'package:chat_app_mini_project/views/phone_login.dart';
import 'package:chat_app_mini_project/views/profile.dart';
import 'package:chat_app_mini_project/views/update_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instant chat',
      theme: ThemeData(
         
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),

      routes:{
        // "/":(context) => PhoneLogin(),
         "/":(context) => HomePage(),

        "/home": (context) => HomePage(),
        "/chat": (context) => ChatPage(),
        "/profile": (context) => ProfilePage(),
        "/update": (context) => UpdateProfile(),

      } ,

    );
  }
}

 