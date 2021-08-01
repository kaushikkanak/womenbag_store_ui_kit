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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.22,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB9C4),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Find your Favorite \nItems!',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Color(0xff8B2833),
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(left: 10),
                              height: size.height * 0.06,
                              width: size.width * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        // surffix isn't working properly  with SVG
                                        // thats why we use row
                                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 10),
                              height: size.height * 0.06,
                              width: size.width * 0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(36),
                              ),
                              child: Icon(
                                CupertinoIcons.slider_horizontal_3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
    );
  }
}
