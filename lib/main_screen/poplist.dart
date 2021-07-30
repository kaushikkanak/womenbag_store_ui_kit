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
      height: size.height * 0.29,
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
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductScreen()));
        },
        child: Card(
          child: Container(
            width: size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('assets/fav.svg')),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(popItem.svgSrc)),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 3),
                  child: Text(
                    popItem.name,
                    style: GoogleFonts.roboto(
                        fontSize: 16, color: Color(0xff060608)),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, bottom: 3),
                      child: SvgPicture.asset('assets/star.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        popItem.rating.toString(),
                        style: GoogleFonts.roboto(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.16,
                    ),
                    Text(
                      '₹',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      popItem.amount.toString(),
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.bold),
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
