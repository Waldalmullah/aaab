
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class PowWidget extends StatelessWidget {
  const PowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      SvgPicture.asset('assets/svg/cat-pow.svg', height: 180);
}
