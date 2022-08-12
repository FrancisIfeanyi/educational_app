import 'package:flutter/material.dart';
import 'package:loginapp/model/pages/utili/course_info.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  ),
                  Text(
                    'Primary 1',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  SubjectTile(
                    studentName: ('Asante Twi'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Computing'),
                    score: (30.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Creative Art'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('English'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('French'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Mathematics'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Natural Science'),
                    score: (0.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Geography'),
                    score: (80.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SubjectTile(
                    studentName: ('Physics'),
                    score: (50.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
