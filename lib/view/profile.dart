import 'package:flutter/material.dart';
import 'package:loginapp/model/list_tile.dart';
import 'package:loginapp/model/subject.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileList> listProfile = [
    ProfileList(
      iconType: Icon(Icons.play_lesson),
      listName: 'Courses',
    ),
    ProfileList(
      iconType: Icon(Icons.question_answer_rounded),
      listName: 'Saved Questions',
    ),
    ProfileList(
      iconType: Icon(Icons.attach_money_sharp),
      listName: 'Commissions',
    ),
    ProfileList(
      iconType: Icon(Icons.person_outline),
      listName: 'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blueGrey[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            child: Text(
                              'SI',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Success Ifeanyi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 88),
                      child: Icon(
                        Icons.logout_outlined,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 8,
              height: 22,
              color: Colors.red,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: listProfile.length,
                    itemBuilder: ((BuildContext context, int index) {
                      return Column(
                        children: [
                          List_Tile(
                            profile: listProfile[index],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    }))),
            Container(
              height: 120,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.headset_mic_outlined, size: 20),
                  Text(
                    'How can we help you?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 8,
              height: 28,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
