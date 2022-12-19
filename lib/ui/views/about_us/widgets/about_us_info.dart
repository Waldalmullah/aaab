import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class AboutUsInfoWidget extends StatelessWidget {
  const AboutUsInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'We Are a Bahraini team who created this app to help abandoned pets and people to get along and increase the awareness of this problem and help in decrease it and solve it.',
          textAlign: TextAlign.center,
        ),
      );
}
