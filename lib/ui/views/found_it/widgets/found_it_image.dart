import 'dart:io';

import 'package:aaab/ui/views/found_it/found_it_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoundItImageWidget extends StatelessWidget {
  const FoundItImageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final FoundItViewModel model;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async {
          await showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    model.goBack();
                    model.openGallery();
                  },
                  leading: const Icon(Icons.photo),
                  title: const Text('Gallery'),
                ),
                ListTile(
                  onTap: () {
                    model.goBack();
                    model.openCamera();
                  },
                  leading: const Icon(Icons.camera),
                  title: const Text('Camera'),
                ),
              ],
            ),
          );
        },
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.4),
                  blurRadius: 20,
                  offset: const Offset(5, 5),
                )
              ]),
          child: model.image != null
              ? Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.6),
                  image: DecorationImage(
                    image: FileImage(File(model.image!.path)),
                    fit: BoxFit.cover,
                  )),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.photo, size: 50),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text('Add Photo'),
                    )
                  ],
                ),
        ),
      );
}
