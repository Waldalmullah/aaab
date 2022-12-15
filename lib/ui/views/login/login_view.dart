import 'package:aaab/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (LoginViewModel model) async => await model.init(),
      builder: (BuildContext context, LoginViewModel model, Widget? child) {
        return Scaffold(
          backgroundColor: base,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/cat-pow.svg'),
                //  Image.asset(),
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image.asset('assets/png/cat.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.red),
                    decoration: InputDecoration(
                      fillColor: textField,
                      filled: true,
                      labelText: 'Username',
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.red),
                    decoration: InputDecoration(
                      // fillColor: textField,
                      filled: true,
                      labelText: 'Password',
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primary),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primary),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(color: textColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
