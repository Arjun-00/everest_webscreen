import 'package:flutter/material.dart';

class FeaturedHeading extends StatefulWidget {
  FeaturedHeading(this.screenSize);
final Size screenSize;
  @override
  State<FeaturedHeading> createState() => _FeaturedHeadingState();
}

class _FeaturedHeadingState extends State<FeaturedHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.15,
          left: widget.screenSize.width/15,
          right: widget.screenSize.width/15,
        ),
      child: Row(
        children: [
          Text("Images",style: TextStyle(
            fontSize: widget.screenSize.width/30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          ),
          SizedBox(width: widget.screenSize.width/40,),

          Expanded(
            child: Text(
              "For many travelers, Mount Everest tour is one of their dream tours in life.."
                  ,style: TextStyle(
              color: Color(0xFF808080),
              fontSize:  widget.screenSize.width/70,
              fontWeight: FontWeight.normal,
            ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
