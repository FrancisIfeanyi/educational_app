import 'package:flutter/material.dart';
import 'package:loginapp/model/constants.dart';
import 'package:loginapp/model/pages/utili/background.dart';
import 'package:loginapp/model/pages/utili/roundedbutton.dart';
import 'package:loginapp/view/login_page.dart';
import 'package:loginapp/view/main_page.dart';

import 'package:flutter_svg/svg.dart';

import 'package:loginapp/view/signup.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Best Brain Academy',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/images/bodypix.svg',
            height: size.height * 0.47,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login_Page();
              }));
            },
          ),
          RoundedButton(
            text: 'SIGN UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Signup_Page();
              }));
            },
          )
        ],
      ),
    ));
  }
}
