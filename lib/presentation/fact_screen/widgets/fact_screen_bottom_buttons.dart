import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';
import 'package:flutter_cat_facts/presentation/widgets/custom_button.dart';

class FactScreenBottomButtons extends StatelessWidget {
  final VoidCallback anotherFactTap;
  final VoidCallback factsHistoryTap;

  const FactScreenBottomButtons({
    super.key,
    required this.anotherFactTap,
    required this.factsHistoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 52,
            width: double.infinity,
            child: CustomButton(
              primaryColor: AppColors.primary,
              onBtnPressed: anotherFactTap,
              text: S.of(context).anotherFactBtnText,
              textColor: AppColors.white,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 52,
            width: double.infinity,
            child: CustomButton(
              primaryColor: AppColors.secondary,
              onBtnPressed: factsHistoryTap,
              text: S.of(context).factHistory,
              textColor: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
