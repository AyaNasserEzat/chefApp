import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utiles/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.width = double.infinity,
      required this.text,
      required this.onPressed,
       this.height,
      this.backgroundColor});
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: width!.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  backgroundColor: MaterialStateProperty.all(
                backgroundColor ?? AppColor.primery,
              )),
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium,
          )),
    );
  }
}
