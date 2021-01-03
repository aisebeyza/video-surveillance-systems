import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.lottie,
  }) : super(key: key);
  final String text, lottie;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Spacer(),
      Text(
        "Hoşgeldiniz",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(56),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center),
      Spacer(),
      Lottie.asset(
        lottie,
        height: getProportionateScreenHeight(265),
        width: getProportionateScreenWidth(335),
        repeat: true,
        reverse: true,
        animate: true,
      ),
    ]);
  }
}
