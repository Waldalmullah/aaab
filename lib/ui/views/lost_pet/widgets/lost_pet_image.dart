import 'package:aaab/app/models/Post.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view_model.dart';
import 'package:flutter/material.dart';

class LostPetImage extends StatelessWidget {
  const LostPetImage({Key? key, required this.model}) : super(key: key);

  final LostPetViewModel model;

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          image: DecorationImage(
            image: NetworkImage(model.post.photo ?? ''),
          ),
        ),
      );
}
