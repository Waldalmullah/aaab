import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './shelter_details_view_model.dart';

class ShelterDetailsView extends StatelessWidget {
  const ShelterDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShelterDetailsViewModel>.reactive(
      viewModelBuilder: () => ShelterDetailsViewModel(context),
      onModelReady: (ShelterDetailsViewModel model) async => await model.init(),
      builder:
          (BuildContext context, ShelterDetailsViewModel model, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              'ShelterDetailsView',
            ),
          ),
        );
      },
    );
  }
}
