import 'package:aaab/ui/views/post_activity/post_activity_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class PostActivityHeader extends StatelessWidget {
  const PostActivityHeader({
    Key? key,
    required this.model,
  }) : super(key: key);

  final PostActivityViewModel model;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text('Posts Activity'),
            ),
          ),
          SvgPicture.asset('assets/svg/header.svg')
        ].reversed.toList(),
      );
}
