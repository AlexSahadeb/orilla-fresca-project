import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;
  CategoryIcon({required this.color, required this.iconName, this.size = 30});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: const EdgeInsets.all(10),
        child: IconFont(color: Colors.white, size: size, iconName: iconName),
      ),
    );
  }
}
