import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/widget/categoryicon.dart';

class BuildCategoryCard extends StatelessWidget {
  BuildCategoryCard({required this.categorice, required this.onCardClick});

  Category categorice;
  Function onCardClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick();
      },
      child: Container(
          margin: const EdgeInsets.all(20),
          height: 150,
          child: Stack(
            children: [
              Positioned.fill(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/imgs/" + categorice.imgName + ".png",
                  fit: BoxFit.cover,
                ),
              )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ])),
                  )),
              Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: CategoryIcon(
                            color: categorice.color, iconName: categorice.icon),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categorice.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
