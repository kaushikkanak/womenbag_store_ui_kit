import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFFB9C4),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffC7051A),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/fav.svg'),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(
                color: Color(0xffFFB9C4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Brand',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff8B2833),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Moon',
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Color(0xff8B2833).withOpacity(0.5),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Text(
                            'Code',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff8B2833),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Y2d345',
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Color(0xff8B2833).withOpacity(0.5),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Text(
                            'Leather',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color(0xff8B2833),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '100 %',
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Color(0xff8B2833).withOpacity(0.5),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/pinkbag.png',
                        width: size.width * 0.6,
                        height: size.height * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pink Bag',
                    style: GoogleFonts.roboto(
                      fontSize: 32,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '₹' + ' 889',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color(0xffC7051A),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Text(
                        '₹' + ' 789',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Color(0xff060608),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
