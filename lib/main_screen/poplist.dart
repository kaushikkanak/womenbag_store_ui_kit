import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:womenbag_store_ui_kit/models/popitems.dart';
import 'package:womenbag_store_ui_kit/product_screen/product_sreen.dart';

class PopItemList extends StatelessWidget {
  const PopItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height);
    return Container(
      height: size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popItems.length,
        itemBuilder: (context, index) {
          return PopCard(
            popItem: popItems[index],
          );
        },
      ),
    );
  }
}

class PopCard extends StatelessWidget {
  const PopCard({
    Key? key,
    required this.popItem,
  }) : super(key: key);
  final PopItem popItem;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductScreen()));
        },
        child: Card(
          child: Container(
            width: size.width * 0.4,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      'assets/fav.svg',
                      height: size.height * 0.05,
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(popItem.svgSrc,
                      width: size.width * 0.32, height: size.height * 0.16),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: size.width * 0.01),
                  child: Text(
                    popItem.name,
                    style: GoogleFonts.roboto(
                        fontSize: size.height * 0.023,
                        color: Color(0xff060608)),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.006,
                          bottom: size.height * 0.006),
                      child: SvgPicture.asset(
                        'assets/star.svg',
                        width: size.width * 0.035,
                        height: size.height * 0.015,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.005),
                      child: Text(
                        popItem.rating.toString(),
                        style:
                            GoogleFonts.roboto(fontSize: size.height * 0.016),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.17,
                    ),
                    Text(
                      '₹',
                      style: GoogleFonts.roboto(
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      popItem.amount.toString(),
                      style: GoogleFonts.roboto(
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
