import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/views/finding_pet/widgets/finder_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './finding_pet_view_model.dart';

class FindingPetView extends StatelessWidget {
  const FindingPetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return ViewModelBuilder<FindingPetViewModel>.reactive(
      viewModelBuilder: () => FindingPetViewModel(context),
      onModelReady: (FindingPetViewModel model) async => await model.init(),
      builder: (BuildContext context, FindingPetViewModel model, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Pet Found',
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
                    'Finder Information',
                    style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: FinderInfoWidget(name: 'Mudafar Almusaed', phoneNumber: '33003867', email: 'mudafaralmusaed97@gmail.com', details: 'Found Lucy in the supermarket being humbed by 3 stray cats LOL'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Contact them to receive your pet then confirm receiving it through the button below. by the way, Don't forget to thank them for their effort!",
                    style: TextStyle(
                      color: AppColors.maroni,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: AppColors.yellow,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        elevation: 2,
                        child: Text(
                          'Received my pet!',
                          style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        onPressed: () {
                          //TODO Logout
                        },
                      ),
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
