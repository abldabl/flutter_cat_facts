import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color? color;
  final double? value;

  const CustomProgressIndicator({
    Key? key,
    this.color,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? AppColors.primary,
        value: value,
      ),
    );
  }
}
