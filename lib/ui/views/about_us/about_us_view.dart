import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/about_us/widgets/about_us_copy_right.dart';
import 'package:aaab/ui/views/about_us/widgets/about_us_header.dart';
import 'package:aaab/ui/views/about_us/widgets/about_us_info.dart';
import 'package:aaab/ui/views/about_us/widgets/about_us_logo.dart';
import 'package:aaab/ui/views/about_us/widgets/about_us_more_info.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './about_us_view_model.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutUsViewModel>.reactive(
      viewModelBuilder: () => AboutUsViewModel(context),
      onModelReady: (AboutUsViewModel model) async => await model.init(),
      builder: (BuildContext context, AboutUsViewModel model, Widget? child) {
        return Scaffold(
          body: Column(
            children: [
              AboutUsHeaderWidget(model: model),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: const [
                    AboutUsLogoWidget(),
                    AboutUsInfoWidget(),
                    AboutUsMoreInformationWidget(),
                    AboutUsCopyRightWidget()
                  ],
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
