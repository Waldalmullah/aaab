import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:aaab/app/locator/locator.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:stacked/stacked.dart' as stacked;
import 'package:aaab/app/services/router_service.dart';

abstract class BaseViewModel extends stacked.BaseViewModel {
  BaseViewModel(BuildContext context) {
    _context = context;
  }

  late BuildContext _context;

  final RouterService _routerService = locator<RouterService>();

  // Focus
  void removeFocus() => FocusManager.instance.primaryFocus?.unfocus();

  // Navigation
  void goBack() => _routerService.router.pop();
  void canPop(String path) => _routerService.router.canPop();
  void navigateBack() => _routerService.router.navigateBack();
  void push(PageRouteInfo page) => _routerService.router.push(page);
  void pushNamed(String path) => _routerService.router.pushNamed(path);
  void replaceNamed(String path) => _routerService.router.replaceNamed(path);

  // SnackBar
  void showSnackBar(String message, {Duration? duration}) {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
      backgroundColor: AppColors.primary,
      duration: duration ?? const Duration(seconds: 1),
      content: Text(message, style: TextStyle(color: AppColors.textColor)),
    ));
  }
}
