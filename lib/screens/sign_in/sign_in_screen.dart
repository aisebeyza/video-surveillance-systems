import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "Giriş Yap",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
