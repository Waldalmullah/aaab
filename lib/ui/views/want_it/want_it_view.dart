import 'package:aaab/ui/views/want_it/widgets/want_it_about_me.dart';
import 'package:aaab/ui/views/want_it/widgets/want_it_button.dart';
import 'package:aaab/ui/views/want_it/widgets/want_it_header.dart';
import 'package:aaab/ui/views/want_it/widgets/want_it_why_i_want_to_adopt_it.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './want_it_view_model.dart';

class WantItView extends StatelessWidget {
  const WantItView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WantItViewModel>.reactive(
      viewModelBuilder: () => WantItViewModel(context),
      onModelReady: (WantItViewModel model) async => await model.init(),
      builder: (BuildContext context, WantItViewModel model, Widget? child) {
        return Scaffold(
          body: Column(
            children: [
              WantItHeaderWidget(model: model),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(children: const [
                  WantItAboutMeWidget(),
                  WantItWhyIWantToAdoptItWidget(),
                  WantItButtonWidget(),
                ]),
              ))
            ],
          ),
        );
      },
    );
  }
}
