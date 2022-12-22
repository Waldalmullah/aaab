import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class AboutUsMoreInformationWidget extends StatelessWidget {
  const AboutUsMoreInformationWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('For More information:')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(color: AppColors.primary),
                  child: const Icon(Icons.phone),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('+973 37707221 - Yasser'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(color: AppColors.primary),
                  child: const Icon(Icons.camera),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('AAABPetRecue'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(color: AppColors.primary),
                  child: const Icon(Icons.email),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Petaaab@gmail.com'),
                )
              ],
            ),
          )
        ],
      );
}
