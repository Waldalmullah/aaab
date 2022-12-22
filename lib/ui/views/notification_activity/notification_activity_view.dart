import 'package:aaab/ui/widgets/smart_widgets/bottom_navy_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './notification_activity_view_model.dart';

class NotificationActivityView extends StatelessWidget {
  const NotificationActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationActivityViewModel>.reactive(
      viewModelBuilder: () => NotificationActivityViewModel(context),
      onModelReady: (NotificationActivityViewModel model) async =>
          await model.init(),
      builder: (BuildContext context, NotificationActivityViewModel model,
          Widget? child) {
        return Scaffold(
          bottomNavigationBar: BottomNavyBarWidget(currentIndex: 2),
          body: const Center(
            child: Text(
              'NotificationActivityView',
            ),
          ),
        );
      },
    );
  }
}
