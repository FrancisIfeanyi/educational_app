import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     child: Image.asset(
          //       'assets/images/wall3.png',
          //       width: size.width * 0.4,
          //     )),
          // Positioned(
          //     bottom: 0,
          //     left: 0,
          //     child: Image.asset(
          //       'assets/images/wall1.jpg',
          //       width: size.width * 0.3,
          //     )),
          child,
        ],
      ),
    );
  }
}
