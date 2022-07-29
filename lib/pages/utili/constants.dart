import 'package:flutter/material.dart';

final kHintText = TextStyle(
  color: Colors.white,
  fontFamily: 'OpenSans',
);

final kLabel = TextStyle(
  color: Colors.white,
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