import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';

class FactCard extends StatelessWidget {
  final String factText;
  final String createDate;

  const FactCard({
    super.key,
    required this.factText,
    required this.createDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(factText),
          const SizedBox(height: 10),
          Text(createDate),
        ],
      ),
    );
  }
}
