import 'package:flutter/material.dart';

class FliatingQuickAccessBarState extends StatefulWidget {
  FliatingQuickAccessBarState(this.screenSize);

  final Size screenSize;
  @override
  State<FliatingQuickAccessBarState> createState() => _FliatingQuickAccessBarStateState();
}

class _FliatingQuickAccessBarStateState extends State<FliatingQuickAccessBarState> {
  List _isHovering = [false,false,false,false];
  List<Widget> rowElement = [];
  List<String> items = ["History","Beaches","Hills","Adventure"];
  List<IconData> icons = [Icons.history,Icons.beach_access,Icons.holiday_village_sharp,Icons.play_arrow];

  List<Widget> generateRawElements() {
    rowElement.clear();
    for(int i = 0; i<items.length; i++){
      Widget elementTitle = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value){
          setState(() {
            value? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: (){},
        child: Text(items[i],style: TextStyle(
          color: _isHovering[i]? Color(0xFFff2400) : Color(0xFF808080),
          fontWeight: _isHovering[i]? FontWeight.bold : FontWeight.normal,
        ),),
      );

      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      rowElement.add(elementTitle);
      if(i < items.length - 1){
        rowElement.add(spacer);
      }
    }
    return rowElement;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.60,
          left:
          //ResponsiveWidget.isSmallScreen(context)?
          widget.screenSize.width /12,
          //    :widget.screenSize.width /5,
          right:
          //ResponsiveWidget.isSmallScreen(context)?
          widget.screenSize.width /12,
           //   :widget.screenSize.width /5,
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: this.widget.screenSize.height/50,
              bottom: this.widget.screenSize.height/50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generateRawElements(),
            ),
          ),
        ),
      ),
    );
  }
}
