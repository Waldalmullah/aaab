import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './adoption_pet_view_model.dart';

class AdoptionPetView extends StatelessWidget {
  const AdoptionPetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdoptionPetViewModel>.reactive(
      viewModelBuilder: () => AdoptionPetViewModel(context),
      onModelReady: (AdoptionPetViewModel model) async => await model.init(),
      builder:
          (BuildContext context, AdoptionPetViewModel model, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              'AdoptionPetView',
            ),
          ),
        );
      },
    );
  }
}
