import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int flutterLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: GNav(
      //   backgroundColor: Colors.cyan,
      //   tabs: [
      //     GButton(
      //       icon: Icons.home,
      //       text: 'Home',
      //     ),
      //     GButton(
      //       icon: Icons.facebook,
      //       text: 'Facebook',
      //     ),
      //     GButton(icon: Icons.favorite_border, text: 'Twitter'),
      //     GButton(icon: Icons.search, text: 'Bing'),
      //   ],
      // ),
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Ify ID '),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flutterLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/pic5.jpg'),
                radius: 90.0,
              ),
            ),
            // Divider(
            //   height: 90,
            //   color: Colors.blueGrey[100],
            // ),
            SizedBox(
              height: 80.0,
            ),
            Text(
              'NAME:',
              style: TextStyle(
                color: Colors.cyanAccent[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'SUCCESS IFEANYI',
              style: TextStyle(
                color: Colors.indigoAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'CURRENT FLUTTER LEVEL',
              style: TextStyle(
                color: Colors.cyanAccent[600],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$flutterLevel',
              style: TextStyle(
                color: Colors.indigoAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'PHONE:',
              style: TextStyle(
                color: Colors.cyanAccent[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '+2348063989006',
              style: TextStyle(
                color: Colors.purpleAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  'azuatalam2016@gmail.com',
                  style: TextStyle(
                    color: Colors.redAccent[200],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
