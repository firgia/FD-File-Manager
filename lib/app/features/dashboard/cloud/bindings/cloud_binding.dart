part of cloud;

class CloudBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CloudController());
  }
}
