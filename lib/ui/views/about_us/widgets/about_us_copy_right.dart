import 'package:flutter/material.dart';

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
