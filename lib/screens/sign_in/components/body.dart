import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/no_account_text.dart';
import 'package:video_surveillance_systems/size_config.dart';
import '../../../constants.dart';
import 'sign_in_form.dart';

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
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Text(
                  "Tekrar Hoşgeldiniz",
                  style: TextStyle(
                    color: kPriColor,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "E-posta adresiniz ve şifreniz ile giriş yapınız",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(13),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
