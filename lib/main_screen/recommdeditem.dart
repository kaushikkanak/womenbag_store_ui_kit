import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:womenbag_store_ui_kit/models/recom_item.dart';

class RecommendedItemList extends StatelessWidget {
  const RecommendedItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recom.length,
        itemBuilder: (context, index) {
          return RecomCard(
            recommendedItem: recom[index],
          );
        },
      ),
    );
  }
}

class RecomCard extends StatelessWidget {
  const RecomCard({
    Key? key,
    required this.recommendedItem,
  }) : super(key: key);
  final RecommendedItem recommendedItem;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        width: size.width * 0.44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              recommendedItem.svgSrc,
              height: size.height * 0.1,
              width: size.width * 0.15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hobo bag'),
                Row(
                  children: [
                    SvgPicture.asset('assets/star.svg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(recommendedItem.rating.toString()),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset('assets/favblack.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    '₹' + recommendedItem.amount.toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
