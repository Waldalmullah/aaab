import 'package:aaab/ui/views/want_it/want_it_view_model.dart';
import 'package:flutter/material.dart';

class WantItWhyIWantToAdoptItWidget extends StatelessWidget {
  const WantItWhyIWantToAdoptItWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  final WantItViewModel model;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Why I want to adopt it',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.4),
                    blurRadius: 20,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: model.whyIWantToAdoptItTextEditingController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 8,
                  maxLines: 10,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          ),
        ],
      );
}
