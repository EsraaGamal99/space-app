import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/constants_sizes.dart';
import 'package:space_app/core/helpers/constants_strings.dart';
import 'package:space_app/features/profile/ui/widgets/change_profile_image_widget.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_bars/inner_screens_app_bar.dart';
import '../widgets/edit_profile_text_field_widget.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  TextEditingController userNameController = TextEditingController();

  TextEditingController userEmailController = TextEditingController();

  TextEditingController userPasswordController = TextEditingController();

  String userName = 'Bryan Wolf';

  String userEmail = 'bryanwolf@gmail.com';

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
                  topText: editTextKey,
                  bottomText: profileTextKey,
                ),
                SizedBox(height: 40.h),
                const Center(child: ChangeProfileImage()),
                SizedBox(height: 40.h),
                EditProfileTextFieldWidget(
                  controller: userNameController,
                  title: userNameTextKey,
                  hintText: enterYourUsernameTextKey,
                  initialValue: userName,
                  onChanged: (String value) {},
                ),
                SizedBox(height: 20.h),
                EditProfileTextFieldWidget(
                  controller: userPasswordController,
                  title: passwordTextKey,
                  hintText: enterYourPasswordTextKey,
                  initialValue: userName,
                  onChanged: (String value) {},
                  obscureText: true,
                ),
                SizedBox(height: 20.h),
                EditProfileTextFieldWidget(
                  controller: userEmailController,
                  title: emailTextKey,
                  hintText: enterYourEmailTextKey,
                  initialValue: userEmail,
                  onChanged: (String value) {},
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 80.h),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryWhiteColor,
                      minimumSize: Size(double.infinity, 60.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(largeBorderRadius),
                      ),
                    ),
                    child: Text(
                      saveTextKey,
                      style: TextStyle(
                        color: AppColors.primaryBlackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
