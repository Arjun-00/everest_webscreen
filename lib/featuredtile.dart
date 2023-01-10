import 'package:flutter/material.dart';

class FeaturedTile extends StatefulWidget {
   FeaturedTile(this.screenSize);
  final Size screenSize;

  @override
  State<FeaturedTile> createState() => _FeaturedTileState();
}

class _FeaturedTileState extends State<FeaturedTile> {

  final List<String> assets = ["asset/images/ev1.jpg","asset/images/ev2.jpg","asset/images/ice2.jpg","asset/images/ice3.jpg"];
  final List<String> title = ["K2 trip","Amadableam","Mount Everest","NALOC"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.screenSize.height * 0.06,
        left: widget.screenSize.width/15,
        right: widget.screenSize.width/15,
        //bottom: widget.screenSize.height * 0.06,
      ),
      child: Container(
        height: widget.screenSize.width/4.4,
      child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: assets.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right:widget.screenSize.width/65 ),
              child: Column(
                children: [
                  SizedBox(
                    height: widget.screenSize.width/6,
                    width: widget.screenSize.width/3.8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                assets[index]
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 20,
                              spreadRadius: 5,
                              color: Colors.grey.withOpacity(0.3),
                            )
                          ]
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      top: widget.screenSize.height / 70
                  ),
                    child: Text(
                      title[index],
                      style: TextStyle(
                        fontSize: widget.screenSize.width / 70,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            );
          }
      ),
      )

    );
  }
}
