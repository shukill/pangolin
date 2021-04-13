import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
       'Quick Edits',
       style: GoogleFonts.abel(
         fontSize:28,
         color: kPrimaryColor,
         fontWeight: FontWeight.w800
       )
        // style: TextStyle(
        //   fontSize: 20,
        //   color: kPrimaryColor,
        //   fontWeight: FontWeight.w300,
        // ),
      ),
    );
  }
}
