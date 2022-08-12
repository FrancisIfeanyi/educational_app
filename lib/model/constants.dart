import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xA15AEDF0);
const kPrimaryLightColor = Color(0xA9EAF9F0);

final kHintText = TextStyle(
  color: Colors.black,
  fontFamily: 'OpenSans',
);

final kLabel = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecoration = BoxDecoration(
  color: Colors.lightBlueAccent[100],
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black45,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
