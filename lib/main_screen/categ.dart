import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:womenbag_store_ui_kit/models/categories.dart';

class CatagList extends StatelessWidget {
  const CatagList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
      height: size.height * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catogories.length,
        itemBuilder: (context, index) {
          return CatCard(
            categories: catogories[index],
          );
        },
      ),
    );
  }
}

class CatCard extends StatelessWidget {
  const CatCard({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final Categories categories;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: size.width * 0.26,
        decoration: BoxDecoration(
            color: Color(0xffFE738A).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(size.width * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              categories.svgSrc,
            ),
            SizedBox(
              height: size.height * 0.009,
            ),
            Text(categories.name),
          ],
        ),
      ),
    );
  }
}
