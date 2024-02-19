import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:habits_tracker/screens/introduction/introduction_screen.dart';

void main() {
  runApp(
    DevicePreview(
      backgroundColor: Color.fromARGB(255, 25, 22, 32), // VS Code theme.
      builder: (context) => const MyApp(),
    ),
  );
}

//Usefull for the Chrome device running app with device_preview
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const IntroductionScreen(),
    );
  }
}
