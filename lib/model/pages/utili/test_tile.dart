import 'package:flutter/material.dart';

class Test_Tile extends StatelessWidget {
  final String testName;
  final String anounceMe;
  final String image;

  const Test_Tile({
    Key? key,
    required this.testName,
    required this.anounceMe,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  testName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  anounceMe,
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Image.asset(
              image,
              width: 40,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
