import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/features/controller/landing_page/landing_page_controller.dart';
import 'package:my_local/app/features/ui/explore/discovery_page.dart';
import 'package:my_local/app/features/ui/home/home_page.dart';
import 'package:my_local/app/features/ui/notification/notification_page.dart';
import 'package:my_local/app/features/ui/sim_local/sim_local_page.dart';

class LandingPage extends GetView<LandingPageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
        () {
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex.value,
                children: [
                  HomePage(),
                  SimLocalPage(),
                  DiscoveryPage(),
                  NotificationPage(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.redAccent,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex.value,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 0,
              items: [
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.home,
                  label: 'Home',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.sportscourt,
                  label: 'News',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.bell,
                  label: 'Alerts',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.person,
                  label: 'Account',
                ),
              ],
            ),
          );
        }
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}