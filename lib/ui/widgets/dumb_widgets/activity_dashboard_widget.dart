import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';


class ActivityDashboardWidget extends StatelessWidget {
  const ActivityDashboardWidget(
      {Key? key,
      required this.img,
      required this.name,
      required this.description,
      required this.onTap})
      : super(key: key);

  final String name;
  final String description;
  final String img;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightYellow,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: AppColors.maroni,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Assistant",
                ),
              ),
              ElevatedButton(
                onPressed: onTap,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white.withOpacity(0.9),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(AppColors.maroni),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                ),
                child: const Text('Open'),
              )
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.maroni,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          img,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: AppColors.maroni,
                      fontFamily: "Assistant",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
