import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/core/theming/assets.dart';
import 'package:space_app/core/theming/colors.dart';
import '../../../../../core/helpers/constants_strings.dart';
import '../../../../../core/theming/text_styles.dart';

class PickCardWidget extends StatelessWidget {
  final String cardName;
  final String imageName;
  final bool? isToDetailsScreen;
  final void Function()? onPressed;

  const PickCardWidget({
    super.key,
    required this.cardName,
    required this.imageName,
    this.isToDetailsScreen,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,
      height: 196.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    imageName,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryWhiteColor.withOpacity(0.1),
                      AppColors.primaryBlackColor.withOpacity(0.8),
                    ],
                    stops: const [
                      0.0,
                      1.9
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              width: MediaQuery.of(context).size.width - 60.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        adventurerTextKey,
                        style: AppTextStyles.fontWhite15W500,
                      ),
                      Text(
                        cardName,
                        style: AppTextStyles.fontWhite33W600,
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: isToDetailsScreen == true
                        ? onPressed
                        : () {
                            cardName == 'Rockets'
                                ? Navigator.pushNamed(
                                    context, Routes.rocketsScreen)
                                : (cardName == 'Dragons')
                                    ? Navigator.pushNamed(
                                        context, Routes.dragonScreen)
                                    : Navigator.pushNamed(
                                        context, Routes.landPodsScreen);
                          },
                    color: AppColors.primaryMediumGrayColor.withOpacity(0.4),
                    padding: EdgeInsets.all(6.h),
                    height: 54.h,
                    minWidth: 59.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.h)),
                    child: SvgPicture.asset(
                      AppAssets.forwardArrowIcon,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
