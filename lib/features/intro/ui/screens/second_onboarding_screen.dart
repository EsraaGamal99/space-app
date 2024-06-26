import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:space_app/core/helpers/constants.dart';
import 'package:space_app/core/helpers/extenstions.dart';
import 'package:space_app/core/theming/app_theme_cubit/app_theme_cubit.dart';
import 'package:space_app/features/localization/logic/localization_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/buttons/animation_button.dart';
import '../../../../core/widgets/buttons/custom_material_button.dart';
import '../../data/onboarding_data_model.dart';
import '../widgets/dots_onboarding_button.dart';

class SecondOnBoardingScreen extends StatefulWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  State<SecondOnBoardingScreen> createState() => _MiddleOnBoardingScreenState();
}

class _MiddleOnBoardingScreenState extends State<SecondOnBoardingScreen> {

  int onBoardingScreenIndex = 0;
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    List onboardingData = AppThemeCubit.isDarkMode ? getOnBoardingData(context) : getOnBoardingDataLightMode(context);
    return Scaffold(
      body: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              onBoardingScreenIndex = index;
            });
          },
          itemCount: onboardingData.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                SizedBox(
                  height: context.height,
                  width: context.width,
                  child: Image.asset(
                    onboardingData[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: context.height * 0.4,
                    width: context.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                // if(onBoardingScreenIndex != onBoardingData.length - 2 || onBoardingScreenIndex != onBoardingData.length - 1)
                BlocProvider.of<LocalizationCubit>(context).isArabic()
                    ? Positioned(
                        top: 60,
                        left: 20,
                        child: InkWell(
                          onTap: ()  {
                            Navigator.pushNamedAndRemoveUntil(context, Routes.welcomeScreen, (route) => false);
                            setBoolToPrefs(onBoardingKey, true);

                            //context.pushNamed(Routes.welcomeScreen);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryLightGreyColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  context.translate.skipTextKey,
                                  style: AppTextStyles.fontWhite22W600,
                                ),
                                SizedBox(width: 10.w),
                                RotatedBox(
                                    quarterTurns: BlocProvider.of<LocalizationCubit>(context).isArabic() ? 2 : 0,
                                    child: SvgPicture.asset(
                                      AppAssets.forwardArrowIcon,
                                      colorFilter: const ColorFilter.mode(
                                          AppColors.primaryWhiteColor,
                                          BlendMode.srcIn),
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Positioned(
                        top: 60,
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(context, Routes.welcomeScreen, (route) => false,);
                            setBoolToPrefs(onBoardingKey, true);

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryLightGreyColor
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  context.translate.skipTextKey,
                                  style: AppTextStyles.fontWhite22W600.copyWith(color: Theme.of(context).colorScheme.primary),
                                ),
                                SizedBox(width: 10.w),
                                SvgPicture.asset(AppAssets.forwardArrowIcon, colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),),
                              ],
                            ),
                          ),
                        ),
                      ),
                Positioned(
                  top: 120,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        onboardingData[index].title,
                        style: AppTextStyles.fontWhite63W600.copyWith(height: 1.h, color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    children: [
                      Expanded(child: Container()),
                      SizedBox(height: 20.h),
                      Text(onboardingData[index].description,
                          style: AppTextStyles.fontWhite17W500.copyWith(color: Theme.of(context).colorScheme.primary)),
                      SizedBox(height: 30.h),
                      onBoardingScreenIndex != onboardingData.length - 1
                          ? OnBoardingDotsButton(
                              onBoardingScreensNumber: onboardingData.length,
                              isActive: onBoardingScreenIndex == index,
                              onBoardingScreenIndex: onBoardingScreenIndex,
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: AnimationButton(
                                onPress: () {
                                  context.pushReplacementNamed(Routes.welcomeScreen);
                                },
                                child: CustomMaterialButton(

                                  label: context.translate.startTextKey,
                                  isFullWidth: false,
                                  // backgroundColor: AppColors.primaryWhiteColor,
                                  // labelColor: AppColors.primaryBlackColor,
                                ),

                              ),
                            ),
                      SizedBox(height: 40.h),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}