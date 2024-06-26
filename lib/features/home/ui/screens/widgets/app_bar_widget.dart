import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/core/theming/assets.dart';
import 'package:space_app/core/theming/text_styles.dart';
import 'package:space_app/core/helpers/extenstions.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 100.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                context.translate.welcomeOnboardTextKey, style: AppTextStyles.fontWhite13W400.copyWith(color: Theme.of(context).colorScheme.primary),
              ),

              Text(
                context.translate.spaceVoyagerTextKey, style: AppTextStyles.fontWhite30W500.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          Flexible(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.profileScreen);
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.h),
                  border: Border.all(color: Theme.of(context).colorScheme.surface.withOpacity(0.2), width: 7,style: BorderStyle.solid),
                  image: const DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(AppAssets.ellipseImage,),
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
