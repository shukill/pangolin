import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/bg_home.png"),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _topContent(),
                        _centerContent(),
                        _bottomContent(context)
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _topContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 18,
      ),
      Row(
        children: <Widget>[
          Text(
            "${DateTime.now().hour} : ${DateTime.now().minute}",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Color(0xff1B1D28),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Image.asset("assets/cloud.png"),
          SizedBox(
            width: 10,
          ),
          Text(
            "32° C",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xff1B1D28),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 14,
      ),
      Text(
        "Apr.14.2021 | Wednesday",
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Color(0xff7B7F9E),
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget _centerContent() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset("assets/logo.png"),
        SizedBox(
          height: 18,
        ),
        Text(
          "Pangolin",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Color(0xff1B1D28),
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          "Laser Show Control  For Lighting Professionals. \n\nJoin For Free.",
          style: GoogleFonts.poppins(
            fontSize: 15,
            height: 1.6,
            color: Color(0xff7b7f9e),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

Widget _bottomContent(context) {
  return Column(
    children: <Widget>[
      MaterialButton(
        elevation: 0,
        color: Color(0xFFFFAC30),
        height: 50,
        minWidth: 200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text(
          "Sign In",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xff212330),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      SizedBox(
        height: 16,
      ),
      GestureDetector(
        onTap: () {
          print("click create");
        },
        child: Text(
          "Create an Account",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xff212330),
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    ],
  );
}
