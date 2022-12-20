import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './shelter_view_model.dart';

class ShelterView extends StatelessWidget {
  const ShelterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShelterViewModel>.reactive(
      viewModelBuilder: () => ShelterViewModel(context),
      onModelReady: (ShelterViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ShelterViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'ShelterView',
            ),
          ),
        );
      },
    );
  }
}
