import 'package:collage_project/view/selection/selection_screen.dart';
import 'package:collage_project/view/touristrisort/toursit_resort_screen.dart';
import 'package:flutter/material.dart';
import '../../widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: MainButton(
              'Selection Project',
              () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectoinSceen(),
                  ),
                );
              },
            ),
          ),
          Center(
            child: MainButton(
              'Tourist resort project',
              () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TouristResortScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
