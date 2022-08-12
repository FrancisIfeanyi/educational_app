import 'package:flutter/material.dart';
import 'package:loginapp/model/constants.dart';
import 'package:loginapp/view/login_page.dart';
import 'package:loginapp/view/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BEST BRAIN ACADEMY',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      routes: {
        Login_Page.routeName: (context) => Login_Page(),
      },
    );
  }
}
