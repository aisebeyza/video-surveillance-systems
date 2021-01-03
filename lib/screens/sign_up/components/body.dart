import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

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
                  "Kayıt Olun",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(30),
                    color: kPriColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lütfen bilgilerinizi doldurunuz",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'Devam ederek Şart ve Koşullarımızı kabul ettiğinizi onaylayınız',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
