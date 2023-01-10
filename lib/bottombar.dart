import 'package:flutter/material.dart';

import 'bottomBarColumn.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static const Color gradientStartColor = Color(0xff212224);
  static const Color gradientEndColor = Color(0xffd91a1a);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        boxShadow: [
          BoxShadow(
            color: gradientStartColor,
            offset: Offset(1.0,6.0),
            blurRadius: 1.0,
          ),
          BoxShadow(
            color: gradientEndColor,
            offset: Offset(1.0,6.0),
            blurRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          colors: [gradientStartColor,
          gradientEndColor],
          begin: const FractionalOffset(0.2, 0.2),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0,1.0],
          tileMode: TileMode.clamp
        ),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(heading:"About",s1:"" ,s2: "",s3: "" ,),
              Container(color: Colors.white,
              width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomBarColumn(heading:"TEAM EVEREST LTD",s1:"Kadmandu" ,s2: "-05NKd d5",s3: "Neppal -5896554hd5" ,),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
