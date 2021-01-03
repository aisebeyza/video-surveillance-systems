import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/bottom_navigation_bar.dart';
import 'package:video_surveillance_systems/screens/camera/camera_screen.dart';
import '../../constants.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text(
            "Ana Sayfa",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.exit_to_app,
                    size: 26.0,
                  ),
                )),
          ]),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: kPriColor,
        onPressed: () => Navigator.pushNamed(context, CameraScreen.routeName),
      ),
    );
  }
}
