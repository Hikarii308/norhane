import 'package:chat/pages/login/firstpage.dart';
import 'package:chat/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'pages/login/loginScreen.dart';

void main() {
  runApp(FoodAppUI());
}

class FoodAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
     // home: Loginscreen(),
     // home: ProfilePage(),
    );
  }
}

