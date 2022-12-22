import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './shelter_view_model.dart';

class ShelterView extends StatelessWidget {
  const ShelterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShelterViewModel>.reactive(
      viewModelBuilder: () => ShelterViewModel(context),
      onModelReady: (ShelterViewModel model) async => await model.init(),
      builder: (BuildContext context, ShelterViewModel model, Widget? child) {
        return Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                    onPressed: () => model.goBack(),
                    icon: const Icon(Icons.arrow_back)),
              ),
              title: const Text('Shelters'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              foregroundColor: AppColors.maroni,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Shelters information',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextField(
                              controller: model.searchController,
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                                hintText: 'Search a shelter',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 18),
                                prefixIcon: Container(
                                  padding: const EdgeInsets.all(15),
                                  width: 18,
                                  child: const Icon(
                                    Icons.search,
                                    color: AppColors.maroni,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    sheltersWidget(model)
                  ],
                ),
              ),
            ));
      },
    );
  }

  Widget sheltersWidget(ShelterViewModel model) {
    return Column(
      children: List.generate(model.shelters.length, (int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16, right: 16),
          child: InkWell(
            onTap: () => model.pushShelterDetails(model.shelters[index]),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFFD683).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            model.shelters[index].image ?? ''),
                                        fit: BoxFit.fill),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  model.shelters[index].name ?? '-',
                                  style: const TextStyle(
                                      color: Color(0xff59344F),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
