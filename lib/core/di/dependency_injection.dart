import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:space_app/core/helpers/constants.dart';
import 'package:space_app/core/theming/app_theme_cubit/app_theme_cubit.dart';
import 'package:space_app/features/dragons/data/repo/dragon_repo_impl.dart';
import 'package:space_app/features/dragons/logic/dragon_cubit.dart';

import '../../features/dragons/data/repo/dragon_repo.dart';
import '../networking/api_service/dio_factory.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async{

  /// Dio
  Dio dio = DioFactory.getDio();

  //Box of theme in hive local data
  final appThemeBox = await Hive.openBox(themeKey);

  //Dragons repo
  getIt.registerLazySingleton(() => DragonRepo(dio));
  getIt.registerLazySingleton(() => DragonRepoImpl(dragonRepo: getIt()));;

  //Dragon app_theme_cubit
  getIt.registerFactory(() => DragonCubit(dragonRepo: getIt()));

  //App theme app_theme_cubit
  getIt.registerFactory(() => AppThemeCubit(themeBox: appThemeBox));
}