import 'package:aaab/app/models/Shelter.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:stacked/stacked.dart';

import './shelter_details_view_model.dart';

class ShelterDetailsView extends StatelessWidget {
  const ShelterDetailsView({required this.shelter, Key? key}) : super(key: key);

  final Shelter shelter;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShelterDetailsViewModel>.reactive(
      viewModelBuilder: () => ShelterDetailsViewModel(context, shelter),
      onModelReady: (ShelterDetailsViewModel model) async => await model.init(),
      builder:
          (BuildContext context, ShelterDetailsViewModel model, Widget? child) {
        return Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                    onPressed: () => model.navigateBack(),
                    icon: const Icon(Icons.arrow_back)),
              ),
              title: const Text('Shelter Details'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              foregroundColor: AppColors.maroni,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 400,
                        height: 300,
                        color: Colors.white,
                        child: Container(
                          child: Image.network(
                            model.shelter.image!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      model.shelter.name!,
                      style: const TextStyle(
                        color: AppColors.maroni,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                    child: Text(
                      model.shelter.description!,
                      style: const TextStyle(
                        color: AppColors.maroni,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35.0, horizontal: 10),
                    child: Container(
                      height: 1.5,
                      width: double.infinity,
                      color: AppColors.maroni,
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                          width: 350,
                          child: Image.network(
                              'https://i.stack.imgur.com/HILmr.png'),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () async => model.sendEmail(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 30),
                              child: Text(
                                'Email us',
                                style: TextStyle(
                                    color: AppColors.maroni,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async => model.sendEmail(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 30),
                              child: Text(
                                'Message us',
                                style: TextStyle(
                                    color: AppColors.maroni,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 16),
                    child: InkWell(
                      onTap: () async => model.sendEmail(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 30),
                          child: Text(
                            'Donate',
                            style: TextStyle(
                                color: AppColors.maroni,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 10.0),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         SizedBox(
                  //           height: 50,
                  //           width: 130,
                  //           child: FloatingActionButton(
                  //             backgroundColor: AppColors.yellow,
                  //             shape: const RoundedRectangleBorder(
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(15.0))),
                  //             elevation: 2,
                  //             child: const Text(
                  //               'Donate',
                  //               style: TextStyle(
                  //                   color: AppColors.maroni,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 16),
                  //             ),
                  //             onPressed: () {
                  //               //TODO URL
                  //             },
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                ],
              ),
            ));
      },
    );
  }
}
