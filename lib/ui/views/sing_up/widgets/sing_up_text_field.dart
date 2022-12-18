import 'package:aaab/ui/views/sing_up/sing_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpTextFieldWidget extends StatelessWidget {
  const SingUpTextFieldWidget({
    Key? key,
    required this.title,
    required this.model,
    required this.controller,
  }) : super(key: key);

  final String title;
  final SingUpViewModel model;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            child: Text(
              title,
              style: const TextStyle(
                  color: Color(0xff59344F), fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: const Color(0xff808080).withOpacity(.12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none)),
          ),
        ],
      ),
    );
  }
}
