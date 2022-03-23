import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';

class CategoryButtomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipOval(
          child: Material(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ),
              color: AppColors.MAIN_COLOR,
            ),
          ),
        ),
        ClipOval(
          child: Material(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
              ),
              color: AppColors.MAIN_COLOR,
            ),
          ),
        ),
        ClipOval(
          child: Material(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.pin_drop,
              ),
              color: AppColors.MAIN_COLOR,
            ),
          ),
        ),
        ClipOval(
          child: Material(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
              color: AppColors.MAIN_COLOR,
            ),
          ),
        ),
      ],
    );
  }
}
