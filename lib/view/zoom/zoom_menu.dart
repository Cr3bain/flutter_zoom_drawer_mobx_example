part of "zoom.dart";

Widget zoomMenu(BuildContext context, ZoomDrawerController zoomDC,
    ZoomViewModel viewModel) {
  return Theme(
    data: ThemeData.dark(),
    child: Scaffold(
      backgroundColor: Colors.indigo,
      body:
          Padding(padding: const EdgeInsets.only(left: 15), child: menuList()),
    ),
  );
}

ListView menuList() {
  List<ListTile> listTile = mainMenu
      .map((menuItem) => ListTile(
            leading: Icon(menuItem.icon),
            title: Text(menuItem.title),
            onTap: () {
              _updatePage(menuItem.index);
              zoomDC.toggle?.call();
            },
          ))
      .toList();

  return ListView(
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            scale: 0.6,
            image: NetworkImage(
                "https://www.gndg.web.tr/wp-content/uploads/2021/10/logo_transparan.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: Stack(
          children: const [
            Positioned(
              bottom: 8.0,
              left: 4.0,
              child: Text(
                "GNDG",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      for (int i = 0; i < listTile.length; i++) listTile[i],
    ],
  );
}
