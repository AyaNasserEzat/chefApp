import 'package:chefapp/core/bloc/global_cubit.dart';
import 'package:chefapp/core/bloc/global_state.dart';
import 'package:chefapp/core/database/chacheHelper/chach_helper.dart';
import 'package:chefapp/core/services/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initServerLocator();
  await sl<CacheHelper>().init();
  runApp( BlocProvider(
    create: (context) => GlobalCubit(),
    child:const MyApp()));
}

