// ignore_for_file: depend_on_referenced_packages

import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/lost_pet/widgets/lost_pet_buttons.dart';
import 'package:aaab/ui/views/lost_pet/widgets/lost_pet_card.dart';
import 'package:aaab/ui/views/lost_pet/widgets/lost_pet_header.dart';
import 'package:aaab/ui/views/lost_pet/widgets/lost_pet_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import './lost_pet_view_model.dart';

class LostPetView extends StatelessWidget {
  LostPetView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LostPetViewModel>.reactive(
      viewModelBuilder: () => LostPetViewModel(context),
      onModelReady: (LostPetViewModel model) async => await model.init(),
      builder: (BuildContext context, LostPetViewModel model, Widget? child) {
        return Scaffold(
          body: Column(children: [
            LostPetHeader(model: model),
            LostPetImage(model: model),
            LostPetCard(model: model),
            const Spacer(),
            LostPetButtons(model: model),
          ]),
        );
      },
    );
  }
}
