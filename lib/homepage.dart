import 'package:everest_webscreen/topbarcontent.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';
import 'featuredheading.dart';
import 'featuredtile.dart';
import 'floatingquickaccessbar.dart';
import 'maincarousel.dart';
import 'mainheading.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0;
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener(){
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(_scrollListener);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width,80),
        child: TopBarContent(_opacity),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: screenSize.height * 0.55,
                    width:screenSize.width * 0.55,
                    child: Image.asset("asset/logo/evlogo3.png"),
                  ),
                ),
                Column(
                  children: [
                    FliatingQuickAccessBarState(screenSize),
                    FeaturedHeading(screenSize),
                    FeaturedTile(screenSize),
                    MainHeading(screenSize),
                    MainCarousel(),
                    SizedBox(height: screenSize.height/10,),
                    BottomBar(),

                  ],
                ),

              ],
            ),
          ],
        ),
      )
    );
  }
}
