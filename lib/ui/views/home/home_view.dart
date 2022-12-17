import 'package:aaab/ui/widgets/dumb_widgets/activity_dashboard_widget.dart';
import 'package:aaab/ui/widgets/dumb_widgets/pet_dashboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

import '../../../app/theme/AppColors.dart';
import './home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(context),
        onModelReady: (HomeViewModel model) async => await model.init(),
        builder: (BuildContext context, HomeViewModel model, Widget? child) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _welcome_header('Mohamed Mukhtar'),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _pets_list(),
                        const SizedBox(height: 16),
                        _activities_list(context),
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

  Column _activities_list(context) {
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
            child: ListView.separated(
              // TODO: remove this to the correct DB amount
              itemCount: 5,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => ActivityDashboardWidget(
                name: 'Cat ${index + 1}',
                description:
                    'A cat has been Missing recently in Janabiya, its brown, long tail, blue eyes....',
                img:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg',
                onTap: () => {print('Activity with index: $index clicked')},
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _pets_list() {
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
        SizedBox(
          height: 165,
          width: double.infinity,
          child: ListView.separated(
            // TODO: remove this to the correct DB amount
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: index == 0
                  ? const EdgeInsets.only(left: 16)
                  // TODO: change this to the items length - 1
                  : (index == 4
                      ? const EdgeInsets.only(right: 16)
                      : const EdgeInsets.all(0)),
              child: PetDashboardWidget(
                name: 'Cat ${index + 1}',
                img:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg',
                onTap: () => {print('Pet widget with index: $index clicked')},
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 20,
            ),
          ),
        ),
      ],
    );
  }

  Row _welcome_header(String name) {
    // Mohamed Mukhtar
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
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
                name,
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
