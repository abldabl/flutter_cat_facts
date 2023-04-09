import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/app/utils/time_map_helper.dart';

class FactCard extends StatelessWidget {
  final String factText;
  final DateTime createDate;

  const FactCard({
    super.key,
    required this.factText,
    required this.createDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            factText,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            TimeMapHelper.dateForFactItem(dateTime: createDate, context: context),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
