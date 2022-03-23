import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  MainAppBar({this.themeColor = AppColors.MAIN_COLOR});
  @override
  _MainAppBarState createState() => _MainAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: IconFont(
          color: widget.themeColor, size: 40, iconName: IconFontHelper.LOGO),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: widget.themeColor),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 10),
          child: ClipOval(
            child: Image.asset("assets/imgs/me.jpg"),
          ),
        )
      ],
    );
  }
}
