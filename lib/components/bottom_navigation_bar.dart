import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/screens/home/home_screen.dart';
import 'package:video_surveillance_systems/screens/object_detection/ml_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = kBottomColor;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: MenuState.home == selectedMenu
                      ? Colors.white
                      : inActiveIconColor,
                ),
                color: kBottomColor,
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: MenuState.home == selectedMenu
                        ? Colors.white
                        : inActiveIconColor,
                  ),
                  color: kActiveIconColor,
                  onPressed: () => Navigator.pushNamed(context,
                      ObjectDetectionScreen.routeName)), //object detec page
            ],
          )),
    );
  }
}
