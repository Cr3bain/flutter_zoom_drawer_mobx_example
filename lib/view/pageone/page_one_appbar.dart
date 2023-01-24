part of page_one.dart;

AppBar pageOneAppBar(ZoomDrawerController zoomDC) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        zoomDC.toggle!();
      },
    ),
    title: const Text("Page One"),
  );

}
