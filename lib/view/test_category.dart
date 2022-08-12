import 'package:flutter/material.dart';
import 'package:loginapp/model/pages/utili/test_tile.dart';

class Test_category extends StatefulWidget {
  const Test_category({Key? key}) : super(key: key);

  @override
  State<Test_category> createState() => _Test_categoryState();
}

class _Test_categoryState extends State<Test_category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Text(
                      'JHS ICT',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Test_Tile(
                      testName: ('Learn'),
                      anounceMe:
                          ('Different modes to help you master a course'),
                      image: ('assets/logos/think-out-of-the-box.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Test_Tile(
                      testName: ('Notes'),
                      anounceMe: ('Self-explanatory notes on various topics'),
                      image: ('assets/logos/notebook.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Test_Tile(
                      testName: ('Tests'),
                      anounceMe: ('Different modes to get you exam ready'),
                      image: ('assets/logos/flask.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Test_Tile(
                      testName: ('Live'),
                      anounceMe: ('Live sessions'),
                      image: ('assets/logos/play-button.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Test_Tile(
                      testName: ('Games'),
                      anounceMe: ('Educational games based on the course'),
                      image: ('assets/logos/joystick.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Test_Tile(
                      testName: ('Progress'),
                      anounceMe: ('Track your progress'),
                      image: ('assets/logos/growth.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
