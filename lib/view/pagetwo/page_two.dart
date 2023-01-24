library page_two.dart;

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

part 'page_two_appbar.dart';

class PageTwo extends StatelessWidget {
  final ZoomDrawerController zoomDC;
  const PageTwo({required this.zoomDC, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pageTwoAppBar(zoomDC),
      body: const Center(child: Text("Page Two")),
    );
  }
}
