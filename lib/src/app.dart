import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'screens/signInPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
      ),
      title: 'Pangolin',
      home: SignInPage(),
    );
  }
}
