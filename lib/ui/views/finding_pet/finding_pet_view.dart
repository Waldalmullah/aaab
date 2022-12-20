import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './finding_pet_view_model.dart';

class FindingPetView extends StatelessWidget {
  const FindingPetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FindingPetViewModel>.reactive(
      viewModelBuilder: () => FindingPetViewModel(context),
      onModelReady: (FindingPetViewModel model) async => await model.init(),
      builder:
          (BuildContext context, FindingPetViewModel model, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              'FindingPetView',
            ),
          ),
        );
      },
    );
  }
}
