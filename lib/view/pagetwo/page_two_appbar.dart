part of page_two.dart;

AppBar pageTwoAppBar(ZoomDrawerController zoomDC) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        zoomDC.toggle!();
      },
    ),
    title: const Text("Page Two"),
  );
}
