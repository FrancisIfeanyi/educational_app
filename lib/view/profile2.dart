import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loginapp/model/profile_tile.dart';
import 'package:loginapp/model/subject.dart';

class SecondProfile extends StatefulWidget {
  const SecondProfile({Key? key}) : super(key: key);

  @override
  State<SecondProfile> createState() => _SecondProfileState();
}

class _SecondProfileState extends State<SecondProfile> {
  List<Profile_Tile> listOfProfile = [
    Profile_Tile(
      profileName: 'Tests',
      numberValue: 0,
    ),
    Profile_Tile(
      profileName: 'Questions',
      numberValue: 0,
    ),
    Profile_Tile(
      profileName: 'Groups',
      numberValue: 0,
    ),
    Profile_Tile(
      profileName: 'Friends',
      numberValue: 0,
    ),
    Profile_Tile(
      profileName: 'Purchases',
      numberValue: 3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 120),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 40,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 100,
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'joined',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '2mon ago',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Success',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                    Row(
                      children: [
                        Text(
                          'Ifeanyi',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        ),
                        Icon(Icons.edit),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                height: 22,
                color: Colors.white,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: listOfProfile.length,
                      itemBuilder: ((BuildContext context, int index) {
                        return Column(
                          children: [
                            ProfileTile(
                              profile2: listOfProfile[index],
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        );
                      }))),
            ],
          ),
        ),
      ),
    );
  }
}
