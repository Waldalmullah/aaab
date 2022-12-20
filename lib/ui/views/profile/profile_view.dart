import 'package:aaab/ui/views/profile/widgets/profile_header.dart';
import 'package:aaab/ui/views/profile/widgets/profile_item_card.dart';
import 'package:aaab/ui/views/profile/widgets/profile_top_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(context),
      onModelReady: (ProfileViewModel model) async => await model.init(),
      builder: (BuildContext context, ProfileViewModel model, Widget? child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileHeader(model: model),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        ProfileTopCard(),
                        SizedBox(
                          height: 15,
                        ),
                        ProfileItemCard(
                          title: 'Shelter',
                          action: () {},
                          suffixIcon: Icons.security_outlined,
                        ),
                        ProfileItemCard(
                          title: 'My posts',
                          action: () {},
                          suffixIcon: Icons.notifications_active_rounded,
                        ),
                        ProfileItemCard(
                          title: 'Notification settings',
                          action: () {},
                          suffixIcon: Icons.notifications_rounded,
                        ),
                        ProfileItemCard(
                          title: 'Donations',
                          action: () {},
                          suffixIcon: Icons.monetization_on_rounded,
                        ),
                        ProfileItemCard(
                          title: 'Chat bot',
                          action: () {},
                          suffixIcon: Icons.chat,
                        ),
                        ProfileItemCard(
                          title: 'About us',
                          action: () {},
                          suffixIcon: Icons.ios_share,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 180,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            elevation: 0,
                            child: Text(
                              'Logout',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            onPressed: () {
                              //TODO Logout
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}