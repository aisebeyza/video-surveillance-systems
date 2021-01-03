import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/screens/camera/components/camera_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "Yeni Kamera Ekleyin",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(30),
                    color: kPriColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                CameraForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
