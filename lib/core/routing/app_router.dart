import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_app/core/routing/routes.dart';
import 'package:space_app/features/authentication/ui/screens/login_screen.dart';
import 'package:space_app/features/authentication/ui/screens/register_screen.dart';
import 'package:space_app/features/dragons/ui/screens/dragon_screen.dart';
import 'package:space_app/features/dragons/ui/screens/dragons_deatials_screen.dart';
import 'package:space_app/features/home_of_items/ui/screens/home_of_items_screen.dart';
import 'package:space_app/features/landpods/ui/screens/landpods_details_screen.dart';
import 'package:space_app/features/landpods/ui/screens/landposd_screen.dart';
import 'package:space_app/features/profile/ui/screens/app_preferences_screen.dart';
import 'package:space_app/features/intro/ui/screens/first_onboarding_screen.dart';
import 'package:space_app/features/intro/ui/screens/second_onboarding_screen.dart';
import 'package:space_app/features/dragons/logic/dragon_cubit.dart';
import 'package:space_app/features/dragons/ui/dragons%20_screen.dart';
import 'package:space_app/features/profile/ui/screens/edit_profile_screen.dart';
import 'package:space_app/features/profile/ui/screens/profile_screen.dart';
import 'package:space_app/features/rockets/ui/screens/rockets_details_screen.dart';
import 'package:space_app/features/rockets/ui/screens/rockets_screen.dart';
import '../../features/home/ui/screens/home_screen.dart';
import '../../features/intro/ui/screens/splash_screen.dart';
import '../../features/intro/ui/screens/welcome_screen.dart';
import '../../features/not_found/not_found_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.dragonsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DragonCubit>(),
            child: const DragonsScreen(),
          ),
        );
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.homeOfItemsScreen:
        final argument = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => HomeOfItemsScreen(
                  screenTitle: argument,
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.firstOnboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const FirstOnBoardingScreen());
      case Routes.secondOnboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const SecondOnBoardingScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (context) => EditProfileScreen());
      case Routes.appPreferencesScreen:
        return MaterialPageRoute(
            builder: (context) => const AppPreferencesScreen());
      case Routes.rocketsScreen:
        return MaterialPageRoute(builder: (context) => const RocketsScreen());
      case Routes.rocketDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const RocketDetailsScreen());
      case Routes.landPodsScreen:
        return MaterialPageRoute(builder: (context) => const LandPodsScreen());
      case Routes.landPodsDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const LandPodsDetailsScreen());
      case Routes.dragonScreen:
        return MaterialPageRoute(builder: (context) => const DragonScreen());
      case Routes.dragonDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const DragonsDetailsScreen());
      default:
        return MaterialPageRoute(
            builder: (context) =>
                NotFoundScreen(routeSettingsName: routeSettings.name));
    }
  }
}
