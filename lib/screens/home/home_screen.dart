import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/bottom_navigation_bar.dart';
import 'package:video_surveillance_systems/screens/camera/camera_screen.dart';
import 'package:video_surveillance_systems/screens/sign_in/sign_in_screen.dart';
import '../../constants.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.login),
              onPressed: () async {
                await _auth.signOut();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Başarıyla çıkış yapıldı"),
                ));
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
          ),
        ],
      ),
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
