import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';

class FactsHistoryScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FactsHistoryScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      title: Text(
        S.of(context).factHistory,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.black),
      ),
      leading: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: context.router.pop,
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
