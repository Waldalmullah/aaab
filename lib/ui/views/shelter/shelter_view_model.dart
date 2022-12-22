import 'package:aaab/app/core/base_view_model.dart';
import 'package:aaab/app/models/Shelter.dart';
import 'package:aaab/app/router/router.dart';
import 'package:flutter/material.dart';

class ShelterViewModel extends BaseViewModel {
  ShelterViewModel(context) : super(context);
  Future<void> init() async {}

  final List<Shelter> _shelters = [
    Shelter(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS9Su-UCOdgAvLZUNlejIEPpbVMed2BLIEOg&usqp=CAU',
        name: 'Bahrain Animal Rescue Center',
        description:
            'The Bahrain Animal Rescue Centre was started with a goal to help the growing stray population in the Kingdom of Bahrain. We run the shelter with three core values that we hope to spread across the country so that everyone will continue to treat the local animals with respect.'),
    Shelter(
        image:
            'https://lh3.googleusercontent.com/p/AF1QipMXnAKtTq46f66vl6-440HppcnwFdhmR23C16Od=s1360-w1360-h1020',
        name: 'Cat Society in Bahrain',
        description:
            'The Bahrain Animal Rescue Centre was started with a goal to help the growing stray population in the Kingdom of Bahrain. We run the shelter with three core values that we hope to spread across the country so that everyone will continue to treat the local animals with respect.'),
    Shelter(
        image: 'http://www.bspca.org/wp-content/uploads/2015/01/BSPCA-LOGO.png',
        name: 'Bahrain Society for the Prevention of Cruelty to Animals',
        description:
            'The Bahrain Animal Rescue Centre was started with a goal to help the growing stray population in the Kingdom of Bahrain. We run the shelter with three core values that we hope to spread across the country so that everyone will continue to treat the local animals with respect.'),
    Shelter(
        image: 'http://www.bahrainstrays.com/css/images/logo.png',
        name: 'Bahrain Strays',
        description:
            'The Bahrain Animal Rescue Centre was started with a goal to help the growing stray population in the Kingdom of Bahrain. We run the shelter with three core values that we hope to spread across the country so that everyone will continue to treat the local animals with respect.')
  ];
  List<Shelter> get shelters => _shelters;

  void pushShelterDetails(Shelter shelter) =>
      push(ShelterDetailsRoute(shelter: shelter));

  final TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;
}
