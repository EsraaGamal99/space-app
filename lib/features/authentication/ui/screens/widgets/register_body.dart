import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/text_styles.dart';
import 'package:space_app/core/widgets/buttons/custom_material_button.dart';
import 'package:space_app/features/authentication/logic/register_cubit/register_cubit.dart';
import 'package:space_app/features/authentication/ui/screens/widgets/register_bloc_listener.dart';
import 'package:space_app/features/authentication/ui/screens/widgets/user_data_section.dart';
import 'package:space_app/core/helpers/extenstions.dart';

import '../../../../../core/widgets/buttons/animation_button.dart';
import 'already_have_account.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});


  @override
  Widget build(BuildContext context) {
    var read = context.read<RegisterCubit>();
    var formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: SingleChildScrollView(

        child: Form(
          key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 35.h,
              ),
              Text(
                context.translate.letsTextKey,
                style: AppTextStyles.fontWhite40W500.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                context.translate.startWeTextKey,
                style: AppTextStyles.fontWhite63W600.copyWith(height: 1.0,color: Theme.of(context).colorScheme.primary,),
              ),
              UserDataSection(
                isLogin: false,
                nameController: read.nameController,
                emailController: read.emailController,
                passwordController: read.passwordController,
              ),
              AnimationButton(
                onPress:  () async {
                  if(formKey.currentState!.validate()) {
                    await BlocProvider.of<RegisterCubit>(context).userRegistration(
                      context,
                      name: read.nameController.text,
                      email: read.emailController.text,
                      password: read.passwordController.text,
                    );
                  }
                },
                child: CustomMaterialButton(
                  label: context.translate.signUpTextKey,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const AlreadyHaveAnAccount(),
              SizedBox(
                height: 10.h,
              ),
              const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
