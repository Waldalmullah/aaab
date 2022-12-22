import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class FinderInfoWidget extends StatelessWidget {
  const FinderInfoWidget(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.details})
      : super(key: key);
  final String name;
  final String phoneNumber;
  final String email;
  final String details;
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
                const Text(
                  'Name:',
                  style: TextStyle(
                      color: AppColors.maroni,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(width: 8),
                Text(
                  name,
                  style: const TextStyle(
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
                const Text(
                  'Phone number:',
                  style: TextStyle(
                      color: AppColors.maroni,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(width: 8),
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
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  'Email:',
                  style: TextStyle(
                      color: AppColors.maroni,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  email,
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
                  'Details:',
                  style: TextStyle(
                      color: AppColors.maroni,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
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
              details,
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
