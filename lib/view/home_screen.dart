import 'package:flutter/material.dart';
import 'package:loginapp/model/pages/utili/subject_tile.dart';

import '../model/subject.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Subject> listSubject = [
    Subject(
        text: 'JHS1',
        instruction: 'Take a random test across topics',
        priceTag: 'GHS 200'),
    Subject(
        text: 'JHS1',
        instruction: 'Take a random test across topics',
        priceTag: 'GHS 200'),
    Subject(
        text: 'JHS1',
        instruction: 'Take a random test across topics',
        priceTag: 'GHS 200'),
    Subject(
        text: 'JHS1',
        instruction: 'Take a random test across topics',
        priceTag: 'GHS 200'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                children: [
                  Row(
                    //Greetings row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'SuccessIfy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            //Blue box

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free Assessment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Take a free test today and get to know\n your strength and weaknesses',
                            style: TextStyle(color: Colors.amberAccent),
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Try it Now'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        'assets/logos/notepad.png',
                        width: 60,
                        height: 60,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(18.0),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Available Bundles',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Divider(
                            color: Colors.black, //color of divider
                            height: 20, //height spacing of divider
                            thickness: 30, //thickness of divier line
                            indent: 25, //spacing at the start of divider
                            endIndent: 25, //spacing at the end of divider
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),

                      //ListView of Subjects
                      Expanded(
                          child: ListView.builder(
                              itemCount: listSubject.length,
                              itemBuilder: ((BuildContext context, int index) {
                                return Column(
                                  children: [
                                    SubjectTile(
                                      subject: listSubject[index],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                );
                              }))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
