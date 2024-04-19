import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/constants_strings.dart';
import '../../../../core/theming/colors.dart';

class ChangeThemeWidget extends StatelessWidget {
  const ChangeThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.light_mode_rounded, color: AppColors.primaryWhiteColor),
            title: const Text(lightTextKey, style: TextStyle(color: AppColors.primaryWhiteColor)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode_rounded, color: AppColors.primaryWhiteColor),
            title: const Text(darkTextKey, style: TextStyle(color: AppColors.primaryWhiteColor)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}