import 'package:flutter/material.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;

  TopBarContent(this.opacity);

  @override
  State<TopBarContent> createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
             Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   SizedBox(width: screenSize.width/30,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[1] = true : _isHovering[1] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("Home",style: TextStyle(color:_isHovering[1] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize: screenSize.width/35,
                       fontWeight: FontWeight.bold,
                       letterSpacing: 2,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/30,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[0] = true : _isHovering[0] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("make your trip",style: TextStyle(
                       color: _isHovering[0] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize:  _isHovering[0] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/40,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[2] = true : _isHovering[2] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("book ticket",style: TextStyle(
                       color: _isHovering[2] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize: _isHovering[2] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/40,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[3] = true : _isHovering[3] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("enquiry",style: TextStyle(
                       color: _isHovering[3] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize:_isHovering[3] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/40,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[4] = true : _isHovering[4] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("review's",style: TextStyle(
                       color: _isHovering[4] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize: _isHovering[4] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/40,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[5] = true : _isHovering[5] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("images",style: TextStyle(
                       color: _isHovering[5] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize: _isHovering[5] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                   SizedBox(width: screenSize.width/40,),
                   InkWell(
                     onHover: (value){
                       setState(() {
                         value ? _isHovering[6] = true : _isHovering[6] = false;
                       });
                     },
                     onTap: (){},
                     child: Text("contact us",style: TextStyle(
                       color: _isHovering[6] ? Color(0xFFff2400) : Color(0xFF808080) ,
                       fontSize: _isHovering[6] ? screenSize.width/65 : screenSize.width/72,
                       fontWeight: FontWeight.normal,
                     ),
                     ),
                   ),
                 ],
               ),
             ),
          ],
        ),
      ),
    );
  }
}
