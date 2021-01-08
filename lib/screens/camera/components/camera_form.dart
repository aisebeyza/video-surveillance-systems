import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CameraForm extends StatefulWidget {
  @override
  _CameraFormState createState() => _CameraFormState();
}

class _CameraFormState extends State<CameraForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _portController = TextEditingController();
  final TextEditingController _ipController = TextEditingController();
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
  void dispose() {
    _passwordController.dispose();
    _ipController.dispose();
    _portController.dispose();
    super.dispose();
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
          RaisedButton(
            color: kPrimaryColor,
            onPressed: () async {
              if (_formKey.currentState.validate()) {
                _saveCamera(context);
              }
            },
            child: Text("Kaydet"),
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
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
      controller: _portController,
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
      controller: _ipController,
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

  void _saveCamera(BuildContext context) async {
    try {
      final String password = _passwordController.text;
      final int ip = int.parse(_ipController.text);
      final String port = _portController.text;

      Map<String, dynamic> map = {
        'password': password,
        'ip': ip,
        'port': port,
      };

      FirebaseFirestore.instance.collection("cameras").add(map);

      Navigator.pop(context);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
