import 'dart:async';

import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';

class SplashScreen extends StatelessWidget {
  int duration = 0;
  Widget goToPage;
  SplashScreen({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });
    return Container(
        alignment: Alignment.center,
        color: AppColors.MAIN_COLOR,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ));
  }
}
