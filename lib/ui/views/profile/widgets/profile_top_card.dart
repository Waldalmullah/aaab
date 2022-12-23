import 'package:aaab/app/models/User.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/profile/profile_view_model.dart';
import 'package:flutter/material.dart';

class ProfileTopCard extends StatelessWidget {
  const ProfileTopCard(
    this.model, {
    Key? key,
  }) : super(key: key);

  final ProfileViewModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: model.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Center(
                  child: Row(
                    children: [
                      model.user?.image != null
                          ? Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(model.user!.image!),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            )
                          : Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.5),
                                shape: BoxShape.circle,
                              ),
                            ),
                      const SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.user?.email ?? '-',
                            style: const TextStyle(
                              color: AppColors.maroni,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            model.user?.email ?? '-',
                            style: const TextStyle(
                              color: AppColors.maroni,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
