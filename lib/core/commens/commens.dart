
import 'package:flutter/material.dart';

void navigator({required BuildContext context,required String route,dynamic arg}){
  Navigator.pushNamed(context, route,arguments: arg);
}