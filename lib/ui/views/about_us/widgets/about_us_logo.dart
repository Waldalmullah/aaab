import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class AboutUsLogoWidget extends StatelessWidget {
  const AboutUsLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset('assets/png/cat.png'),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "AAAB",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      );
}
