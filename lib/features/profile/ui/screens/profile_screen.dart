import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/extenstions.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/widgets/loading_widgets/screens_loading_widget.dart';
import 'package:space_app/features/profile/logic/all_profile_cubit.dart';
import 'package:space_app/features/profile/logic/all_profile_state.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_bars/inner_screens_app_bar.dart';
import '../widgets/setting_item_Widget.dart';
import '../widgets/user_info_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController feedbackController = TextEditingController();

  void openAppPreferencesScreen(BuildContext context) => context.pushNamed(Routes.appPreferencesScreen);

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AllProfileCubit>(context).getUserProfile(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0.h, right: 17.0.w, left: 17.0.w),
          child: SingleChildScrollView(
            child: BlocListener<AllProfileCubit, AllProfileState>(
              listener: (context, state) {
                state.maybeMap(
                  loggedOut: (value) => Navigator.pushReplacementNamed(context, Routes.loginScreen, arguments: true),
                  orElse: () {},
                );
              },
              child: BlocBuilder<AllProfileCubit, AllProfileState>(
                  builder: (context, state) {
                    return state.map(
                        loading: (_) => const Center(child: ScreensLoadingWidget()),
                        error: (error) => Center(child: Text(error.error)),
                        success: (success) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InnerAppBar(
                                topText: context.translate.appTextKey,
                                bottomText: context.translate.settingsTextKey,
                              ),
                              SizedBox(height: 20.h),
                              UserInfoWidget(name: success.user.displayName ?? 'Bryan Wolf', email: success.user?.email ?? 'bryanwolf@gmail.com'),
                              SizedBox(height: 20.h),
                              SettingItemWidget(icon: Icons.settings, backgroundColor: AppColors.primarySoftGreyColor, foregroundColor: AppColors.primaryWhiteColor, title: context.translate.appPreferencesTextKey, onTap: () => openAppPreferencesScreen(context)),
                              SizedBox(height: 20.h),
                              SettingItemWidget(icon: Icons.logout_rounded, backgroundColor: AppColors.primaryWhiteColor, foregroundColor: AppColors.primaryBlackColor, title: context.translate.signOutTextKey, onTap: () => BlocProvider.of<AllProfileCubit>(context).logout(context: context)),
                              SizedBox(height: 50.h),
                            ],
                          );
                        },
                        initial: (_) => const SizedBox.shrink(),
                        loggedOut: (_) => const SizedBox.shrink(),
                        updateSuccessfully: (success) => const SizedBox.shrink()
                    );
                  }
              ),
            ),
          ),
        ),
      )
    );
  }
}


