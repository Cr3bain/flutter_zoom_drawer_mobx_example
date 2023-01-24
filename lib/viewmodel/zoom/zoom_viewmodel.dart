import 'package:mobx/mobx.dart';

//For create zoom_viewmodel.g.dart file run the command on terminal
//> flutter packages pub run build_runner build

part 'zoom_viewmodel.g.dart';

class ZoomViewModel = ZoomViewModelBase with _$ZoomViewModel;

abstract class ZoomViewModelBase with Store {
  
  @observable
  int pageIndex = 0;

  @action
  void updatePage(int newPageIndex) {
    pageIndex = newPageIndex;
  }
}