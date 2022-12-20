import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard({
    Key? key,
    required this.title,
    required this.action,
    required this.suffixIcon,
  }) : super(key: key);

  final String title;
  final IconData suffixIcon;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    //TODO ACTUAL TIME OF POST
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: action,
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Center(
                  child: Row(
                children: [
                  Icon(
                    suffixIcon,
                    color: Color(0xff59344F),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff59344F),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff59344F),
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
