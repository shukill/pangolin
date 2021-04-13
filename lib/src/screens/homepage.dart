import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pangolin/src/screens/FindQueue.dart';
import 'package:pangolin/src/widgets/videoPlayer.dart';

import 'details/details_screen.dart';
import 'home/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var serviceTitle = 'Graphics';

  List<ModelServices> servicesList = [
    ModelServices(title: "Logo", img: "send.png"),
    ModelServices(title: "Text\nClock", img: "receive.png"),
    ModelServices(title: "Captures", img: "mobile.png"),
    ModelServices(title: "Shows", img: "bill.png"),
    ModelServices(title: "Animals", img: "cashback.png"),
    ModelServices(title: "People\nCharacter", img: "movie.png"),
    ModelServices(title: "Vechicles", img: "flight.png"),
    ModelServices(title: "More\nOptions", img: "menu.png")
  ];
  bool gActive = true;
  bool atActive = false;
  bool pActive = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18, top: 34),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _contentHeader(context),
              SizedBox(
                height: 38,
              ),
              Text(
                "Queue Overview",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xff3A4276),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              _contentOverView(context),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Quick Access",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Image.asset(
                    "assets/bar_code.png",
                    width: 16,
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              _contentSendMoney(context),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    serviceTitle,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 5.0,
                    menuItemExtent: 45,
                    menuBoxDecoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: true,
                    blurBackgroundColor: Colors.black54,
                    bottomOffsetHeight: 100,
                    openWithTap: true,
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Atmosheric",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Color(0xff3A4276),
                                fontWeight: FontWeight.w800,
                              )),
                          trailingIcon: Icon(Icons.landscape_rounded),
                          onPressed: () {
                            setState(() {
                              serviceTitle = 'Atmosheric';
                              gActive = false;
                              atActive = true;
                              pActive = false;
                            });
                          },
                          backgroundColor: (atActive)
                              ? Color(0xffFFAC30)
                              : Color(0xffF1F3F6)),
                      FocusedMenuItem(
                          title: Text("All Pages",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Color(0xff3A4276),
                                fontWeight: FontWeight.w800,
                              )),
                          trailingIcon: Icon(Icons.bubble_chart_rounded),
                          onPressed: () {
                            setState(() {
                              serviceTitle = 'All Pages';
                              gActive = false;
                              atActive = false;
                              pActive = true;
                            });
                          },
                          backgroundColor: (pActive)
                              ? Color(0xffFFAC30)
                              : Color(0xffF1F3F6)),
                      FocusedMenuItem(
                          title: Text("Graphics",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Color(0xff3A4276),
                                fontWeight: FontWeight.w800,
                              )),
                          trailingIcon: Icon(Icons.graphic_eq_rounded),
                          onPressed: () {
                            setState(() {
                              serviceTitle = 'Graphics';
                              gActive = true;
                              atActive = false;
                              pActive = false;
                            });
                          },
                          backgroundColor: (gActive)
                              ? Color(0xffFFAC30)
                              : Color(0xffF1F3F6)),
                    ],
                    child: Image.asset(
                      "assets/adjust.png",
                      width: 16,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              _contentServices(context, servicesList)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _contentHeader(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          Image.asset(
            "assets/logo.png",
            width: 34,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            "Pangolin",
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: Color(0xff3A4276),
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
      GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => VideoApp())),
        child: Image.asset(
          "assets/menu.png",
          width: 16,
        ),
      )
    ],
  );
}

Widget _contentOverView(context) {
  return GestureDetector(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindQueue()),
    ),
    child: Container(
      padding: EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffF1F3F6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "20",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Color(0xff171822),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Frames in Queue",
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff3A4276).withOpacity(.4),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => VideoApp())),
            elevation: 0,
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Color(0xff1B1D28),
              size: 22,
            ),
            shape: CircleBorder(),
            color: Color(0xffFFAC30),
          )
        ],
      ),
    ),
  );
}

Widget _contentSendMoney(context) {
  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
            width: 80,
            height: 100,
            padding: EdgeInsets.all(18),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              padding: EdgeInsets.all(12),
              child: Text(
                "+",
                style: TextStyle(color: Color(0xff1B1D28), fontSize: 22),
              ),
              shape: CircleBorder(),
              color: Color(0xffFFAC30),
            )),
        QuickAcessCard(
          icon: Icons.text_fields_rounded,
          name: "Text",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Text',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.format_shapes_rounded,
          name: "Shape",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Shape',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.edit,
          name: "Trace",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Trace',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.lightbulb,
          name: "DMX",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick DMX',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.timeline_rounded,
          name: "Time",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Timeline',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.copy_rounded,
          name: "Multi",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Multi',),
              ),
            );
          },

        ),
        QuickAcessCard(
          icon: Icons.camera_alt_outlined,
          name: "Captur",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick Capture',),
              ),
            );
          },
        ),
        QuickAcessCard(
          icon: Icons.account_tree_rounded,
          name: "FX",
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(title: 'Quick FX',),
              ),
            );
          },
        ),
      ],
    ),
  );
}

class QuickAcessCard extends StatelessWidget {
  QuickAcessCard(
      {Key key, @required this.name, @required this.icon, this.press})
      : super(key: key);
  final String name;
  final IconData icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(16),
        width: 80,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xffF1F3F6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xffD8D9E4))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  size: 32,
                  color: Colors.black87,
                ),
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _contentServices(context, List<ModelServices> listServices) {
  return Container(
    width: double.infinity,
    height: 260,
    child: GridView.count(
      crossAxisCount: 4,
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 1.5),
      children: listServices.map((value) {
        return GestureDetector(
          onTap: () {
            print("${value.title}");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF1F3F6)),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/${value.img}"),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "${value.title}",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}

class ModelServices {
  String title, img;

  ModelServices({this.title, this.img});
}
