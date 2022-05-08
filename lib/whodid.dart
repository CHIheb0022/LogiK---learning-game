import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_application_1/logic/screens/welcome/welcome_screen.dart';

class logicf extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Formal Logic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomeScreenl(),
    );
  }
}
