
import 'package:chefapp/core/Routes/app_route.dart';
import 'package:chefapp/core/bloc/global_cubit.dart';
import 'package:chefapp/core/bloc/global_state.dart';
import 'package:chefapp/core/local/app_local.dart';
import 'package:chefapp/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_localization/flutter_localization.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375, 812) ,
      builder: (context, child) =>BlocBuilder<GlobalCubit,GlobalState>(
        builder: (context,state){
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routs.initialRoute,
          localizationsDelegates:const [
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
      
          AppLocalizations.delegate,
          
          ],
          supportedLocales:const [
            Locale('ar',"EG"),
            Locale('en',"US"),
          ],
          locale:  Locale(BlocProvider.of<GlobalCubit>(context).langCode),
        onGenerateRoute: AppRoutes.generateRoute,
          title: 'Flutter Demo',
          theme: getTheme(),
          
        );
        }
      ) ,
      
    );
  }
}
