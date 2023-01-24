library zoom;

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_zoom_drawer_mobx_example/view/pagetwo/page_two.dart';
import 'package:flutter_zoom_drawer_mobx_example/model/menu_model.dart';

import '../../viewmodel/zoom/zoom_viewmodel.dart';
import '../pageone/page_one.dart';

part 'zoom_menu.dart';

final ZoomDrawerController zoomDC = ZoomDrawerController();
final zoomViewModel = ZoomViewModel();

final List<MenuModel> mainMenu = [
  MenuModel(
      title: "PageOne",
      icon: Icons.home,
      index: 0,
      page: PageOne(
        zoomDC: zoomDC,
      )),
  MenuModel(
      title: "PageTwo",
      icon : Icons.star,
      index: 1,
      page: PageTwo(
        zoomDC: zoomDC,
      )),
];

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  ZoomState createState() => ZoomState();
}

class ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: zoomDC,
        borderRadius: 24,
        style: DrawerStyle.defaultStyle,
        // showShadow: true,
        openCurve: Curves.fastOutSlowIn,
        slideWidth: MediaQuery.of(context).size.width * 0.65, //0.65
        duration: const Duration(milliseconds: 500),
        angle: 0.0,
        menuBackgroundColor: Colors.indigo,
        mainScreen: Observer(
          builder: (_) {
            return mainMenu[zoomViewModel.pageIndex].page;
          },
        ),
        menuScreen: zoomMenu(context, zoomDC, zoomViewModel));
  }
}

void _updatePage(int newPageIndex) {
  zoomViewModel.updatePage(newPageIndex);
}
