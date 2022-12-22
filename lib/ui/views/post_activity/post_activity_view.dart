import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/post_activity/widgets/post_activity_card.dart';
import 'package:aaab/ui/views/post_activity/widgets/post_activity_header.dart';
import 'package:aaab/ui/widgets/smart_widgets/bottom_navy_bar_widget.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './post_activity_view_model.dart';

class PostActivityView extends StatefulWidget {
  const PostActivityView({Key? key}) : super(key: key);

  @override
  State<PostActivityView> createState() => _PostActivityViewState();
}

class _PostActivityViewState extends State<PostActivityView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostActivityViewModel>.reactive(
      viewModelBuilder: () => PostActivityViewModel(context),
      onModelReady: (PostActivityViewModel model) async => await model.init(),
      builder:
          (BuildContext context, PostActivityViewModel model, Widget? child) {
        return Scaffold(
          bottomNavigationBar: BottomNavyBarWidget(currentIndex: model.currentIndex),
          body: SafeArea(
            child: Column(
              children: [
                PostActivityHeader(model: model),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      PostActivityCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
