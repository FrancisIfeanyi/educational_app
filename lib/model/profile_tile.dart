import 'package:flutter/material.dart';
import 'package:loginapp/model/subject.dart';

class ProfileTile extends StatelessWidget {
  Profile_Tile? profile2;
  ProfileTile({this.profile2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            child: Text(
              profile2!.profileName,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Container(width: 20, child: Text('${profile2!.numberValue}')),
          Container(
            width: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ],
      ),
    );
  }
}
