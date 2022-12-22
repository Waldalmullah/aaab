import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';

class PetDashboardWidget extends StatelessWidget {
  const PetDashboardWidget(
      {Key? key, required this.name, required this.img, required this.onTap})
      : super(key: key);

  final String name;
  final String img;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 160,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.lightYellow,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
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
            const SizedBox(height: 8),
            Text(name)
          ],
        ),
      ),
    );
  }
}
