library page_one.dart;

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

part 'page_one_appbar.dart';

class PageOne extends StatelessWidget {
  final ZoomDrawerController zoomDC;
  const PageOne({required this.zoomDC, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pageOneAppBar(zoomDC),
      body: const Center(child: Text("Page One")),
    );
  }
}
