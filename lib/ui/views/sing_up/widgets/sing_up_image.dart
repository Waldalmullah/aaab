import 'package:aaab/ui/views/sing_up/sing_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpImage extends StatelessWidget {
  const SingUpImage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SingUpViewModel model;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: InkWell(
          onTap: () async {
            await showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        onTap: () => model.openGallery(),
                        leading: const Icon(Icons.photo),
                        title: const Text('Gallery'),
                      ),
                      ListTile(
                        onTap: () => model.openCamera(),
                        leading: const Icon(Icons.camera),
                        title: const Text('Camera'),
                      ),
                    ],
                  );
                });
          },
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.6),
                  borderRadius: const BorderRadius.all(Radius.circular(200)),
                ),
              ),
            ],
          ),
        ),
      );
}