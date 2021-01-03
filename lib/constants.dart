import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFF00838F);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kBottomColor = Color(0xFFE0f7fa);
const kActiveIconColor = Color(0xffb2ebf2);
const kPrimaryGraientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF0097A7), Color(0xFF006064)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
const kPriColor = Color(0xFF6a1b9a);
const kTitleColor = Color(0xff1a237e);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen e-postanızı giriniz";
const String kInvalidEmailError = "Lütfen geçerli e-posta adresi giriniz";
const String kPassNullError = "Lütfen şifrenizi giriniz";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler eşleşmiyor";
const String kNamelNullError = "Lütfen adınızı giriniz";
const String kSurnamelNullError = "Lütfen soyadınızı giriniz";
const String kPhoneNumberNullError = "Lütfen telefon numaranızı giriniz";
const String kipAddressNullError = "Lütfen IP adresi giriniz";
const String kPortNullError = "Lütfen port giriniz";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
