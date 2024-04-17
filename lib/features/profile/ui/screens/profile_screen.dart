import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';

import '../../../../core/helpers/constants_strings.dart';
import '../../../../core/widgets/app_bars/inner_screens_app_bar.dart';
import '../widgets/setting_item_Widget.dart';
import '../widgets/user_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlackColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0.h, right: 17.0.w, left: 17.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InnerAppBar(
                  topText: appTextKey,
                  bottomText: settingsTextKey,
                ),
                SizedBox(height: 20.h),
                const UserInfoWidget(name: 'Bryan Wolf', email: 'bryanwolf@gmail.com'),
                SizedBox(height: 20.h),
                SettingItemWidget(icon: Icons.settings, backgroundColor: AppColors.primarySoftGreyColor, foregroundColor: AppColors.primaryWhiteColor, title: appPreferencesTextKey, onTap: (){},),
                SizedBox(height: 20.h),
                SettingItemWidget(icon: Icons.question_mark_rounded, backgroundColor: AppColors.primarySoftGreyColor, foregroundColor: AppColors.primaryWhiteColor, title: helpAndSupportTextKey, onTap: () {},),
                SizedBox(height: 20.h),
                SettingItemWidget(icon: Icons.star_rate_rounded, backgroundColor: AppColors.primarySoftGreyColor, foregroundColor: AppColors.primaryWhiteColor, title: giveFeedbackTextKey, onTap: () {},),
                SizedBox(height: 20.h),
                SettingItemWidget(icon: Icons.logout_rounded, backgroundColor: AppColors.primaryWhiteColor, foregroundColor: AppColors.primaryBlackColor, title: signUpTextKey, onTap: () {},),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      )
    );
  }
}


