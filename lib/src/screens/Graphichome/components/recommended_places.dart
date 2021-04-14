import 'package:flutter/material.dart';
import 'package:pangolin/src/Models/Place.dart';
import 'package:pangolin/src/screens/Graphicdetails/graphicdetails.dart';
import 'package:pangolin/src/screens/Graphichome/components/grid_place_card.dart';


import '../../../responsive.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: isLandscape(context) ? 3 : 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: isLandscape(context) ? EdgeInsets.symmetric(vertical: 20, horizontal: 50) : EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: List.generate(
          demoPlaces.length,
          (index) {
            return GridPlaceCard(
              place: demoPlaces[index],
              tapEvent: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GraphicDetailsScreen(place: demoPlaces[index])));
              },
            );
          }
        ),
      ),
    );
  }
}