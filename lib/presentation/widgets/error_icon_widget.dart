import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error_outline,
        color: AppColors.primary,
        size: 48,
      ),
    );
  }
}
