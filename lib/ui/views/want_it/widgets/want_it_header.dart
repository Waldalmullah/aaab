import 'package:aaab/ui/views/want_it/want_it_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class WantItHeaderWidget extends StatelessWidget {
  const WantItHeaderWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final WantItViewModel model;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: IconButton(
                onPressed: () => model.goBack(),
                icon: const Icon(Icons.arrow_back)),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text('Want It'),
            ),
          ),
          SvgPicture.asset('assets/svg/header.svg')
        ].reversed.toList(),
      );
}
