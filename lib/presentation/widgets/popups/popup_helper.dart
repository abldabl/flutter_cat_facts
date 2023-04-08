import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/app_colors.dart';
import 'package:flutter_cat_facts/app/exception/base_exception.dart';

import 'popup_widgets/error_popup.dart';

class PopupHelper {
  Future<void> errorPopUp(
    BuildContext context,
    BaseException error, {
    VoidCallback? onDismiss,
    String? btnText,
    bool barrierDismissible = true,
  }) async {
    await showDialog(
      barrierColor: AppColors.black.withOpacity(0.85),
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => ErorrPopup(
        error: error,
        onDismiss: onDismiss,
        btnText: btnText,
      ),
    );
  }
}
