import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/adoption_pet/widgets/adopter_info_widget.dart';
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
      builder: (BuildContext context, AdoptionPetViewModel model, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Pet Adoption',
              style: TextStyle(
                color: AppColors.maroni,
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  model.goBack();
                },
                icon: Icon(
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
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                // image: DecorationImage(image: NetworkImage(''), fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                'User_name',
                                style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, bottom: 25, right: 30),
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
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                // image: DecorationImage(image: NetworkImage(''), fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                'Pet_name',
                                style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 10),
                    child: Container(
                      height: 1.5,
                      width: double.infinity,
                      color: AppColors.maroni,
                    ),
                  ),
                  Text(
                    'Adopter Information',
                    style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: AdopterInfoWidget(
                        name: 'Mudafar', phoneNumber: '33003867', numberOfPets: '1', aboutMe: 'i am mudafar blah blah blah blah blah blah blah blah blah blah', adoptReason: 'because blah blah blah blah blah blah blah blah blah blah'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: FloatingActionButton(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            elevation: 2,
                            child: Text(
                              'Accept',
                              style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO Logout
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
                            backgroundColor: Colors.red[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            elevation: 2,
                            child: Text(
                              'Decline',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO Logout
                            },
                          ),
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
