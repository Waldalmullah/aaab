import 'package:aaab/app/models/PostActivity.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/adoption_pet/widgets/adopter_info_widget.dart';
import 'package:aaab/ui/views/post_activity/post_activity_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './adoption_pet_view_model.dart';

class AdoptionPetView extends StatelessWidget {
  const AdoptionPetView({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final PostActivity activity;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdoptionPetViewModel>.reactive(
      viewModelBuilder: () => AdoptionPetViewModel(context, activity),
      onModelReady: (AdoptionPetViewModel model) async => await model.init(),
      builder:
          (BuildContext context, AdoptionPetViewModel model, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Pet Adoption',
              style: TextStyle(color: AppColors.maroni),
            ),
            leading: IconButton(
                onPressed: () => model.goBack(),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.maroni,
                )),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                // image: DecorationImage(image: NetworkImage(''), fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                model.activity.user?.name ?? '-',
                                style: const TextStyle(
                                    color: AppColors.maroni,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 30.0, bottom: 25, right: 30),
                          child: Icon(
                            Icons.compare_arrows_rounded,
                            color: AppColors.maroni,
                            size: 65,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                // image: DecorationImage(image: NetworkImage(''), fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                model.activity.post?.petName ?? '-',
                                style: const TextStyle(
                                    color: AppColors.maroni,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 45.0, horizontal: 10),
                    child: Container(
                      height: 1.5,
                      width: double.infinity,
                      color: AppColors.maroni,
                    ),
                  ),
                  const Text(
                    'Adopter Information',
                    style: TextStyle(
                        color: AppColors.maroni,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: AdopterInfoWidget(
                      name: model.activity.from_user?.name ?? '-',
                      phoneNumber: model.activity.from_user?.governance ?? '-',
                      numberOfPets: '1',
                      aboutMe: model.activity.post?.description ?? '',
                      adoptReason: model.activity.post?.description ?? '',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 130,
                              decoration: const BoxDecoration(
                                  color: AppColors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: const Center(
                                child: Text('Accept',
                                    style: TextStyle(
                                        color: AppColors.maroni,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              )),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Decline',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
