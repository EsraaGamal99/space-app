import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/extenstions.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/core/widgets/auth_back_button.dart';

import 'package:space_app/core/widgets/buttons/animation_button.dart';
import 'package:space_app/core/widgets/buttons/custom_material_button.dart';
import 'package:space_app/features/authentication/logic/login_cubit/login_cubit.dart';
import 'package:space_app/features/authentication/ui/screens/widgets/login_bloc_listener.dart';
import 'package:space_app/features/authentication/ui/screens/widgets/user_data_section.dart';
import '../../../../../core/theming/text_styles.dart';
import 'do_not_have_an_account.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const AuthBackButton(),
              Text(
                context.translate.welcomeTextKey,
                style: AppTextStyles.fontWhite40W500.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                context.translate.backWelcomeTextKey,
                style: AppTextStyles.fontWhite63W600.copyWith(height: 1.0,color: Theme.of(context).colorScheme.primary,),
              ),
              UserDataSection(
                isLogin: true,
                emailController: cubit.emailController,
                passwordController: cubit.passwordController,
              ),
              AnimationButton(
                onPress: () async {
                  await BlocProvider.of<LoginCubit>(context).userLogin(
                    context,
                    email: cubit.emailController.text,
                    password: cubit.passwordController.text,
                  );
                },
                child: CustomMaterialButton(

                    label: context.translate.logInTextKey),
              ),
              SizedBox(height: 10.h),
              const DoNotHaveAnAccount(),
              const LogInBlocListener(),
            ]),
      ),
    );
  }
}


