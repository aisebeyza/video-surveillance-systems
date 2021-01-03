import 'package:flutter/widgets.dart';
import 'package:video_surveillance_systems/screens/camera/camera_screen.dart';
import 'package:video_surveillance_systems/screens/forgot_password/forgot_password_screen.dart';
import 'package:video_surveillance_systems/screens/home/home_screen.dart';
import 'package:video_surveillance_systems/screens/sign_in/sign_in_screen.dart';
import 'package:video_surveillance_systems/screens/sign_up/sign_up_screen.dart';
import 'package:video_surveillance_systems/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CameraScreen.routeName: (context) => CameraScreen(),
};
