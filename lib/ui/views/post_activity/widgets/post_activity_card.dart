import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostActivity.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/router/router.dart';
import 'package:aaab/ui/views/post_activity/post_activity_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostActivityCard extends StatelessWidget {
  const PostActivityCard({
    required this.model,
    required this.activity,
    Key? key,
  }) : super(key: key);

  final PostActivityViewModel model;
  final PostActivity activity;

  @override
  Widget build(BuildContext context) {
    String _getDate() {
      return '${this.activity.date!.toDate().day}/${this.activity.date!.toDate().month}/${this.activity.date!.toDate().year} - ${this.activity.date!.toDate().hour}:${this.activity.date!.toDate().minute}';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          if (true) {
            //TODO
          // if (activity.post?.status == PostStatus.ABANDONED) {
            // model.pushNamed(const AdoptionPetRoute().path);
          }
        },
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffFFD683).withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _getDate(),
                      style: const TextStyle(
                          color: Color(0xff59344F),
                          fontWeight: FontWeight.w300,
                          fontSize: 13),
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(activity.post?.photo ?? ''),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 250,
                            child: Text(
                              activity.message ?? '-',
                              style: const TextStyle(
                                  color: Color(0xff59344F),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
