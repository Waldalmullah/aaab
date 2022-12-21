import 'package:flutter/cupertino.dart';

import '../../../../app/theme/AppColors.dart';

class AdopterInfoWidget extends StatelessWidget {
  const AdopterInfoWidget({Key? key, required this.name, required this.phoneNumber, required this.numberOfPets, required this.aboutMe, required this.adoptReason}) : super(key: key);
  final String name;
  final String numberOfPets;
  final String phoneNumber;
  final String aboutMe;
  final String adoptReason;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.maroni,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  'Pets owned:',
                  style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  numberOfPets,
                  style: TextStyle(
                    color: AppColors.maroni,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  'Phone number:',
                  style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  phoneNumber,
                  style: TextStyle(
                    color: AppColors.maroni,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About me:',
                  style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Container(
            width: 240,
            child: Text(
              aboutMe,
              maxLines: 4,
              style: TextStyle(
                color: AppColors.maroni,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Reason to adopt:',
                  style: TextStyle(color: AppColors.maroni, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Container(
            width: 240,
            child: Text(
              adoptReason,
              maxLines: 4,
              style: TextStyle(
                color: AppColors.maroni,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
