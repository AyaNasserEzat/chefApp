import 'package:chefapp/core/Routes/app_route.dart';
import 'package:chefapp/core/commens/commens.dart';
import 'package:chefapp/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({super.key});

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
   @override
  void initState() {
    super.initState();
    navigate();
  }
  void navigate(){
  Future.delayed(const Duration(seconds: 1),(){
     navigator(context: context, route: Routs.changeLang); 
  }); 
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primery,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            height: 120.h,width: 120.w,
            child: Image.asset('assets/images/logo.png')),
            SizedBox(height: 16,),
          Text('Chef App',style: Theme.of(context).textTheme.displayLarge,),
        ],),
      ),
    );
  
  }
}