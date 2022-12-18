import 'package:aaab/app/models/Post.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class LostPetHeader extends StatelessWidget {
  const LostPetHeader({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LostPetViewModel model;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: IconButton(
                onPressed: () => model.goBack(),
                icon: const Icon(Icons.arrow_back)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text('${model.post.petName} Is Missing!'),
            ),
          ),
          SvgPicture.asset('assets/svg/header.svg')
        ].reversed.toList(),
      );
}
