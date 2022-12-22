import 'dart:ui';

import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view_model.dart';
import 'package:flutter/material.dart';

class LostPetButtons extends StatelessWidget {
  const LostPetButtons({Key? key, required this.model}) : super(key: key);

  final LostPetViewModel model;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                if (model.post.status == PostStatus.ABANDONED) {
                  model.pushFoundIt();
                } else {
                  model.pushWantIt();
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  model.post.status == PostStatus.ABANDONED
                      ? 'Want It!'
                      : 'Found It!',
                  style: const TextStyle(
                      color: AppColors.textColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                IconButton(
                    onPressed: () => model.toggleLike(),
                    icon: Icon(model.hasliked != true
                        ? Icons.favorite_border
                        : Icons.favorite)),
                Text(
                  '${model.post.likes} People Support you',
                  style: const TextStyle(
                      color: AppColors.textColor, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      );
}
