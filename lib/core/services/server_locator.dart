import 'package:chefapp/core/database/chacheHelper/chach_helper.dart';
import 'package:get_it/get_it.dart';

 final sl =GetIt.instance;
 Future<void>initServerLocator()async{
  sl.registerLazySingleton<CacheHelper>(() => CacheHelper());
 }