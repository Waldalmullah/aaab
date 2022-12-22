import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/router/router.gr.dart';
import 'package:aaab/app/services/router_service.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class BottomNavyBarWidget extends StatelessWidget {
  BottomNavyBarWidget({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final int currentIndex;
  final RouterService _routerService = locator<RouterService>();

  void replaceNamed(String path) => _routerService.router.replaceNamed(path);

  dynamic changeIndex(int index) {
    if (currentIndex == index) return;

    if (index == 0) replaceNamed(const HomeRoute().path);
    if (index == 1) replaceNamed(const CreatePostRoute().path);
    if (index == 2) replaceNamed(const PostActivityRoute().path);
    if (index == 3) replaceNamed(const ProfileRoute().path);
  }

  @override
  Widget build(BuildContext context) => BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (int index) => changeIndex(index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: AppColors.maroni,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.post_add),
            title: const Text('Create Post'),
            activeColor: AppColors.maroni,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.notifications_on),
            title: const Text(
              'Activity',
            ),
            activeColor: AppColors.maroni,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            activeColor: AppColors.maroni,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
