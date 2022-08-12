import 'package:flutter/material.dart';
import 'package:loginapp/model/subject.dart';
import 'package:loginapp/view/profile2.dart';

class List_Tile extends StatelessWidget {
  ProfileList? profile;
  List_Tile({this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                profile!.iconType,
                SizedBox(height: 18, width: 15),
                Text(
                  profile!.listName,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondProfile();
              }));
            },
          ),
        ],
      ),
    );
  }
}
