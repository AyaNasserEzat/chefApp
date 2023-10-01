import 'package:chefapp/core/bloc/global_cubit.dart';
import 'package:chefapp/core/local/app_local.dart';
import 'package:chefapp/core/utiles/app_assets.dart';
import 'package:chefapp/core/utiles/app_colors.dart';
import 'package:chefapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/app_string.dart';

class changeLangScreen extends StatelessWidget {
  const changeLangScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImage.bg,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                  SizedBox(
                  height: 80.h,
                ),
                Image.asset(AppImage.logo),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppStrings.welcomeToChefApp.tr(context),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  AppStrings.pleaseChooseYourLanguage.tr(context),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: 120.h,
                ),
                Row(
                  children: [
                    CustomButton(
                      text: 'English',
                      onPressed: () {
                        BlocProvider.of<GlobalCubit>(context).changeLang('en');
                      },
                      width: 140,
                      backgroundColor: AppColor.black,
                    ),
                    Spacer(),
                    CustomButton(
                      text: 'العربيه',
                      onPressed: () {
                        BlocProvider.of<GlobalCubit>(context).changeLang('ar');
                      },
                      width: 140,
                      backgroundColor: AppColor.black,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
