import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/screens/camera/components/body.dart';
import '../../constants.dart';
import '../../size_config.dart';

class CameraScreen extends StatelessWidget {
  static String routeName = "/add_camera";
  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //neden toDouble hatası aldım ve bu cözdü bilmiyorum
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "Kamera Ekle",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
