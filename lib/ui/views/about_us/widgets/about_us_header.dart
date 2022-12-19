import 'package:aaab/ui/views/about_us/about_us_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class AboutUsHeaderWidget extends StatelessWidget {
  const AboutUsHeaderWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final AboutUsViewModel model;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: IconButton(
                onPressed: () => model.goBack(),
                icon: const Icon(Icons.arrow_back)),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text('About us'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Center(child: SvgPicture.asset('assets/svg/pow2.svg')),
          ),
          SvgPicture.asset('assets/svg/header2.svg')
        ].reversed.toList(),
      );
}
