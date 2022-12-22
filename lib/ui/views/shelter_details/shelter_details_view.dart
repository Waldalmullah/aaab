import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './shelter_details_view_model.dart';

class ShelterDetailsView extends StatelessWidget {
  const ShelterDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShelterDetailsViewModel>.reactive(
      viewModelBuilder: () => ShelterDetailsViewModel(context),
      onModelReady: (ShelterDetailsViewModel model) async => await model.init(),
      builder:
          (BuildContext context, ShelterDetailsViewModel model, Widget? child) {
        return Scaffold(
            appBar: AppBar(
              leading: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: IconButton(
                      onPressed: () => model.goBack(),
                      icon: const Icon(Icons.arrow_back)),
                )
              ]),
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
                      Expanded(
                        child: Container(
                          width: 100,
                          color: Colors.white,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS9Su-UCOdgAvLZUNlejIEPpbVMed2BLIEOg&usqp=CAU'),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Bahrain Animal Rescue Center',
                      style: TextStyle(
                        color: AppColors.maroni,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
                    child: Text(
                      'The Bahrain Animal Rescue Centre was started with a goal to help the growing stray population in the Kingdom of Bahrain. We run the shelter with three core values that we hope to spread across the country so that everyone will continue to treat the local animals with respect.',
                      style: TextStyle(
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
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Expanded(
                          child: Container(
                            width: 350,
                            child: Image.network(
                                'https://i.stack.imgur.com/HILmr.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: FloatingActionButton(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            elevation: 2,
                            child: Text(
                              'Email us',
                              style: TextStyle(
                                  color: AppColors.maroni,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO EmailURL
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: FloatingActionButton(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            elevation: 2,
                            child: Text(
                              'Message us',
                              style: TextStyle(
                                  color: AppColors.maroni,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO URL
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: FloatingActionButton(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            elevation: 2,
                            child: Text(
                              'Donate',
                              style: TextStyle(
                                  color: AppColors.maroni,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO URL
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
