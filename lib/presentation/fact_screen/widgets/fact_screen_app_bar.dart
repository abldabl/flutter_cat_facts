import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/app/constants/text_constants.dart';

class FactScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FactScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundWhite,
      centerTitle: true,
      title: const Text(
        TextConstants.appTitle,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
