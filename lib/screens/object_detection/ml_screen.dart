import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:video_surveillance_systems/components/bottom_navigation_bar.dart';
import 'package:video_surveillance_systems/constants.dart';
import 'package:video_surveillance_systems/enums.dart';
import 'package:video_surveillance_systems/screens/object_detection/components/body.dart';

class ObjectDetectionScreen extends StatefulWidget {
  static String routeName = "/ml";
  @override
  _ObjectDetectionScreenState createState() => _ObjectDetectionScreenState();
}

class _ObjectDetectionScreenState extends State<ObjectDetectionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    main().then((value) {
      super.initState();
    });
  }

  List<CameraDescription> cameras;

  Future<Null> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      print('Error: $e.code\nError Message: $e.message');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        //leading: Icon(Icons.menu),
        title: Text(
          "Nesne Tanıma",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(cameras),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.detect),
    );
  }
}

/*List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
}

class ObjectDetectionScreen extends StatelessWidget {
  static String routeName = "/ml";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        //leading: Icon(Icons.menu),
        title: Text(
          "Nesne Tanıma",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(cameras),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.detect),
    );
  }
}
*/
