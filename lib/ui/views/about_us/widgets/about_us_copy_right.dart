import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class AboutUsCopyRightWidget extends StatelessWidget {
  const AboutUsCopyRightWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text('All Copyright are reserved for AAAB use'),
      );
}
