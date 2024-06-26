import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:space_app/core/helpers/extenstions.dart';

import '../../../../../core/theming/assets.dart';
import 'app_text_form_field.dart';

class SearchTextFieldWidget extends StatelessWidget {
  SearchTextFieldWidget({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: searchController,
      hintText: context.translate.searchYourFavoritePlaceTextKey,
      suffixIcon: IconButton(onPressed: (){},
          iconSize: 40.w,
          icon: SvgPicture.asset(AppAssets.searchIcon,color: Theme.of(context).colorScheme.primary,)),
    );
  }
}
