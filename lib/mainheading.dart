import 'package:flutter/material.dart';

class MainHeading extends StatefulWidget {
  MainHeading(this.screenSize);
  final Size screenSize;

  @override
  State<MainHeading> createState() => _MainHeadingState();
}

class _MainHeadingState extends State<MainHeading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: widget.screenSize.height / 25,
        bottom: widget.screenSize.height / 15,
      ),
      width: widget.screenSize.width,
      child: Text(
        "About Us",
        style: TextStyle(
          color: Color(0xFFff2800),
          fontSize: widget.screenSize.width /30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
