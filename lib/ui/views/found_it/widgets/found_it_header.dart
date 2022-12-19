import 'package:aaab/ui/views/found_it/found_it_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class FoundItHeaderWidget extends StatelessWidget {
  const FoundItHeaderWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final FoundItViewModel model;

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
              child: Text('Found It'),
            ),
          ),
          SvgPicture.asset('assets/svg/header.svg')
        ].reversed.toList(),
      );
}
