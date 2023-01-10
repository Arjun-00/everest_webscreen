import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {

  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomBarColumn({required this.heading,required this.s1,required this.s2,required this.s3});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Text(heading,style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width/80,
            fontWeight: FontWeight.normal,
          ),),
          SizedBox(height: MediaQuery.of(context).size.width/75,),
          Text(s1,style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width/90,
            fontWeight: FontWeight.w500,
          ),),
          Text(s2,style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width/90,
            fontWeight: FontWeight.w500,
          ),),
          Text(s3,style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width/90,
            fontWeight: FontWeight.w500,
          ),),

        ],
      ),
    );
  }
}
