import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/enums.dart';
import 'package:space_app/core/theming/app_theme_cubit/app_theme_cubit.dart';
import 'package:space_app/features/home/ui/screens/widgets/pick_card_widget.dart';
import 'package:space_app/core/theming/assets.dart';
import 'package:space_app/core/helpers/extenstions.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../../../core/theming/app_theme_cubit/app_theme_state.dart';

getCardTitle(BuildContext context) {
  return [
    context.translate.rocketsTextKey,
    context.translate.dragonsTextKey,
    context.translate.landpadsTextKey,
  ];
}
List<String> imageName = [AppAssets.rockets, AppAssets.galaxy, AppAssets.insightfulImage];

class ListPicksWidget extends StatelessWidget {
  const ListPicksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 30.w,right: 30.w,bottom: 30.h),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PickCardWidget(
                  cardType: CardType.values[index],
                  cardName: getCardTitle(context)[index],
                  imageName: AppThemeCubit.isDarkMode
                      ? imageName[index]
                      : imageNameLightMode[index],
                  isToDetailsScreen: false,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 15,
                  ),
              itemCount: 3),
        );
      }
    );
  }
}
