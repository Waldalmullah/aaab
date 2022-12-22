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
      onModelReady: (ShelterViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ShelterViewModel model,
        Widget? child,
      ) {
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
              title: const Text('Shelters'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              foregroundColor: AppColors.maroni,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0),
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
                                child: const Icon(
                                  Icons.search,
                                  color: AppColors.maroni,
                                ),
                                width: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD683).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS9Su-UCOdgAvLZUNlejIEPpbVMed2BLIEOg&usqp=CAU'),
                                                  fit: BoxFit.fill),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 250,
                                          child: const Text(
                                            'Bahrain Animal Rescue Center',
                                            style: TextStyle(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD683).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/download.jpg'),
                                                  fit: BoxFit.fill),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 250,
                                          child: const Text(
                                            'Cat Society in Bahrain',
                                            style: TextStyle(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD683).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'http://www.bspca.org/wp-content/uploads/2015/01/BSPCA-LOGO.png'),
                                                  fit: BoxFit.fill),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 250,
                                          child: const Text(
                                            'Bahrain Society for the Prevention of Cruelty to Animals',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD683).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'http://www.bahrainstrays.com/css/images/logo.png'),
                                                  fit: BoxFit.fill),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 250,
                                          child: const Text(
                                            'Bahrain Strays',
                                            style: TextStyle(
                                                color: AppColors.maroni,
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
                  ),
                ],
              ),
            ));
      },
    );
  }
}
