part of splash;

class SplashController extends GetxController {
  final isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();

    await Future.delayed(Duration(seconds: 3));
    isLoading.value = false;
    goToDashboard();
  }

  static const _url =
      "https://www.youtube.com/channel/UCvD_LJniZfhF6ELHFhB1fPw";

  void goToDashboard() => Get.offNamed(Routes.dashboard);

  void goToYoutubeChannel() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
