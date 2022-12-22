import 'package:aaab/app/models/Pet.dart';
import 'package:aaab/app/models/Post.dart';
import 'package:aaab/app/models/PostStatus.dart';
import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/widgets/dumb_widgets/activity_dashboard_widget.dart';
import 'package:aaab/ui/widgets/dumb_widgets/pet_dashboard_widget.dart';
import 'package:aaab/ui/widgets/smart_widgets/bottom_navy_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(context),
        onModelReady: (HomeViewModel model) async => await model.init(),
        builder: (BuildContext context, HomeViewModel model, Widget? child) {
          return Scaffold(
            bottomNavigationBar: BottomNavyBarWidget(currentIndex: 0),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _welcome_header(model),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _pets_list(model),
                        const SizedBox(height: 16),
                        _activities_list(model),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );

  Column _activities_list(HomeViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Activities',
            style: TextStyle(
              color: AppColors.maroni,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: model.posts!.isEmpty
                ? const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Center(
                      child: Text('No posts yet'),
                    ),
                  )
                : ListView.separated(
                    itemCount: model.posts?.length ?? 0,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      Post _post = model.posts?[index] ?? Post();
                      print(_post);
                      return ActivityDashboardWidget(
                        name: _post.petName ?? '-',
                        description: _post.description ?? '-',
                        img: _post.photo ??
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg',
                        onTap: () => {
                          if (_post.status == PostStatus.LOST)
                            {model.pushLostIt(_post)}
                        },
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 16,
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  Column _pets_list(HomeViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Pets',
            style: TextStyle(
              color: AppColors.maroni,
              fontSize: 20,
            ),
          ),
        ),
        model.isLoading
            ? const SizedBox(
                height: 165,
                width: double.infinity,
                child: Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primary,
                )),
              )
            : SizedBox(
                height: 165,
                width: double.infinity,
                child: model.myPosts!.isEmpty
                    ? const Center(
                        child: Text('no pets'),
                      )
                    : ListView.separated(
                        itemCount: model.myPosts!.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          Post _pet = model.myPosts![index]!;
                          return Padding(
                            padding: index == 0
                                ? const EdgeInsets.only(left: 16)
                                : (index == 4
                                    ? const EdgeInsets.only(right: 16)
                                    : const EdgeInsets.all(0)),
                            child: PetDashboardWidget(
                              name: _pet.petName ?? '-',
                              img: _pet.photo ?? '',
                              onTap: () => {},
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          width: 20,
                        ),
                      ),
              ),
      ],
    );
  }

  Row _welcome_header(HomeViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        model.isLoading
            ? const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SafeArea(
                      child: Text(
                        'Good morning',
                        style: TextStyle(
                          color: AppColors.maroni,
                        ),
                      ),
                    ),
                    Text(
                      model.user?.name ?? '-',
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColors.maroni,
                      ),
                    ),
                  ],
                ),
              ),
        Image.asset(
          'assets/png/dashboard_welcome.png',
          // width: 160,
          height: 160,
        )
      ],
    );
  }
}
