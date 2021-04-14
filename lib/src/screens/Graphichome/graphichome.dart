import 'package:flutter/material.dart';
import 'package:pangolin/src/components/app_bar.dart';
import 'package:pangolin/src/components/bottom_nav_bar.dart';
import 'package:pangolin/src/components/hamburger_menu.dart';
import 'package:pangolin/src/components/user_avatar.dart';
import 'package:pangolin/src/screens/Graphichome/components/places_categoris.dart';
import 'package:pangolin/src/screens/Graphichome/components/popular_places.dart';
import 'package:pangolin/src/screens/Graphichome/components/recommended.dart';
import 'package:pangolin/src/screens/Graphichome/components/recommended_places.dart';


class GraphicHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Discover',
        leading: HamburgerMenu(),
        actions: [
          UserAvatar()
        ]
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PlacesCategories(),

            PopularPlaces(),

            Recommended(),

            RecommendedPlaces()
          ],
        ),
      ),
    );
  }
}