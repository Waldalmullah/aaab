import 'package:flutter/material.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset('assets/png/cat.png'),
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text("Login", textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}
