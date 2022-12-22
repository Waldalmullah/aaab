import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/lost_pet/lost_pet_view_model.dart';
import 'package:flutter/material.dart';

class LostPetCard extends StatelessWidget {
  const LostPetCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LostPetViewModel model;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: AppColors.primary.withOpacity(.5),
        ),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  model.post.petName ?? '-',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 90,
                child: Text(
                  model.post.description ?? '-',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Divider(
              color: const Color(0xff000000).withOpacity(.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  'Status:',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                model.post.status.toString().substring(11),
                style: TextStyle(
                    color: AppColors.textColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      );
}
