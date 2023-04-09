import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';
import 'package:flutter_cat_facts/presentation/widgets/custom_button.dart';

class ErorrPopup extends StatelessWidget {
  final BaseException error;
  final VoidCallback? onDismiss;
  final String? btnText;

  const ErorrPopup({
    Key? key,
    required this.error,
    this.onDismiss,
    this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (onDismiss != null) {
          onDismiss!();
        }
        return true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      error.errorMessage,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28.5),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        primaryColor: AppColors.primary,
                        onBtnPressed: onDismiss ?? Navigator.of(context).pop,
                        text: btnText ?? S.of(context).dismiss,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
