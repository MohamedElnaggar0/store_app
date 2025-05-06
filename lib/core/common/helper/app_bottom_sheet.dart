import 'package:flutter/material.dart';
import 'package:store_app/core/configs/theme/app_color.dart';

class AppBottomSheet {
  static Future<void> showBottomSheet(context, Widget widget) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColor.lightSecondBackgroundColor
          : AppColor.darkSecondBackgroundColor,
      isScrollControlled: true,
      builder: (_) => widget,
    );
  }
}
