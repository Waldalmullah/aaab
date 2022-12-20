import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './post_activity_view_model.dart';

class PostActivityView extends StatelessWidget {
  const PostActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostActivityViewModel>.reactive(
      viewModelBuilder: () => PostActivityViewModel(context),
      onModelReady: (PostActivityViewModel model) async => await model.init(),
      builder:
          (BuildContext context, PostActivityViewModel model, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              'PostActivityView',
            ),
          ),
        );
      },
    );
  }
}
