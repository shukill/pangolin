import 'package:flutter/material.dart';
import 'package:pangolin/src/Models/Place.dart';
import 'package:pangolin/src/components/app_bar.dart';
import 'package:pangolin/src/components/custom_back_button.dart';
import 'package:pangolin/src/screens/Graphicdetails/components/place_image.dart';
import 'package:pangolin/src/screens/Graphicdetails/components/place_information.dart';

class GraphicDetailsScreen extends StatelessWidget {
  final Place place;

  const GraphicDetailsScreen({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildAppBar(context, title: '', actions: [],
          leading: CustomBackButton(
        tapEvent: () {
          Navigator.pop(context);
        },
      )),
      body: Stack(
        children: [PlaceImage(place: place), PlaceInformation(place: place)],
      ),
    );
  }
}
