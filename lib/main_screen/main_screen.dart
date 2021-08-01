import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:womenbag_store_ui_kit/main_screen/categ.dart';
import 'package:womenbag_store_ui_kit/main_screen/poplist.dart';
import 'package:womenbag_store_ui_kit/main_screen/recommdeditem.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFFB9C4),
        leading: Icon(
          CupertinoIcons.text_alignleft,
          color: Color(0xffC7051A),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xffC7051A),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFB9C4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Find your Favorite \nItems!',
                        style: TextStyle(
                          color: Color(0xff8B2833),
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 15),
                          child: Container(
                            width: size.width * 0.75,
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(29.5),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                icon: Icon(Icons.search),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29.5),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.slider_horizontal_3),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              CatagList(),
              Container(
                height: size.height * 0.04,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Populer',
                      style: GoogleFonts.roboto(
                          color: Color(0xff060608),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.roboto(
                          color: Color(0xffC7051A),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              PopItemList(),
              Container(
                height: size.height * 0.04,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: GoogleFonts.roboto(
                          color: Color(0xff060608),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: GoogleFonts.roboto(
                          color: Color(0xffC7051A),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              RecommendedItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
