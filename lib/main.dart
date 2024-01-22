import 'package:camera/camera.dart';
import 'package:attendgo/pages/ClassMainScreen.dart';
import 'package:attendgo/pages/CreateStudent.dart';
import 'package:attendgo/pages/StudentAnalysisScreen.dart';
import 'package:attendgo/pages/createClassScreen.dart';
import 'package:attendgo/pages/MainHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainHomeScreen(),
      routes: {
        'createClassScreen': (ctx) => createClassScreen(),
        'ClassMainScreen': (ctx) => ClassMainScreen(),
        'CreateStudent': (ctx) => CreateStudentPage(),
        'StudentAnalysis': (ctx) => StudentAnalysisScreen(),
      }
    );
  }
}
