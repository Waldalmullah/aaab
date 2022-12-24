import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/found_it/widgets/found_it_button.dart';
import 'package:aaab/ui/views/found_it/widgets/found_it_description.dart';
import 'package:aaab/ui/views/found_it/widgets/found_it_header.dart';
import 'package:aaab/ui/views/found_it/widgets/found_it_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './found_it_view_model.dart';

class FoundItView extends StatelessWidget {
  const FoundItView({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FoundItViewModel>.reactive(
      viewModelBuilder: () => FoundItViewModel(context, post),
      onModelReady: (FoundItViewModel model) async => await model.init(),
      builder: (BuildContext context, FoundItViewModel model, Widget? child) {
        return Scaffold(
          body: Column(
            children: [
              FoundItHeaderWidget(model: model),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FoundItImageWidget(model: model),
                      FoundItDescriptionWidget(model),
                      FoundItButtonWidget(model: model)
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
