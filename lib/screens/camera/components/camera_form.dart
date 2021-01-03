import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/default_button.dart';
import 'package:video_surveillance_systems/components/form_error.dart';
import 'package:video_surveillance_systems/screens/home/home_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CameraForm extends StatefulWidget {
  @override
  _CameraFormState createState() => _CameraFormState();
}

class _CameraFormState extends State<CameraForm> {
  final _formKey = GlobalKey<FormState>();
  //final TextEditingController _passwordController = TextEditingController();
  //final TextEditingController _portController = TextEditingController();
  final List<String> errors = [];
  String ipAddress;
  String port;
  String password;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildipAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildportFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Ekle",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Şifre",
        hintText: "Şifrenizi Giriniz",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildportFormField() {
    return TextFormField(
      onSaved: (newValue) => port = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPortNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPortNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Port",
        hintText: "Port'u giriniz",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildipAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => ipAddress = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kipAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kipAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "IP Adresi",
        hintText: "IP adresi giriniz",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
