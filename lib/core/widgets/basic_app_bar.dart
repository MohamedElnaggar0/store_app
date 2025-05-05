import 'package:flutter/material.dart';
import 'package:store_app/core/configs/theme/app_color.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar(
      {super.key,
      this.title,
      this.backgroundColor,
      this.action,
      this.hideBack = false});
  final Widget? title;
  final Color? backgroundColor;
  final Widget? action;
  final bool hideBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      actions: [
        action ?? Container(),
      ],
      leading: hideBack
          ? null
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColor.lightSecondBackgroundColor
                      : AppColor.darkSecondBackgroundColor,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                ),
              )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
