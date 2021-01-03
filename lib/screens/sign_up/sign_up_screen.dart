import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';

class SignUpscreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "Kayıt Ol",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
