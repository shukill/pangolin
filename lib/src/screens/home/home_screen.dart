import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangolin/src/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        title: title,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
