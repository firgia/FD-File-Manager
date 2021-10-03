library dashboard;

import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/features/dashboard/cloud/views/screens/cloud_screen.dart';
import 'package:file_manager/app/features/dashboard/home/views/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// model

// component
part '../components/bottom_navbar.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.page,
        onPageChanged: (index) => controller.onChangedPage(index),
        children: [
          HomeScreen(),
          CloudScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => _BottomNavbar(
          currentIndex: controller.currentIndex.value,
          onSelected: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
