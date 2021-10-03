part of dashboard;

class DashboardController extends GetxController {
  final page = PageController();
  final currentIndex = 0.obs;

  void changePage(int index) {
    page.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onChangedPage(int index) {
    currentIndex.value = index;
  }
}
