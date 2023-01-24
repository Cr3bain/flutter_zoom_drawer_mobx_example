import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer_mobx_example/view/zoom/zoom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZoomDrawerMobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Zoom(),
    );
  }
}
