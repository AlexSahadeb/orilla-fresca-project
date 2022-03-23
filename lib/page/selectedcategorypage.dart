import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/page/detailspage.dart';
import 'package:orilla_fresca_app/widget/categoryicon.dart';
import 'package:orilla_fresca_app/widget/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;
  SelectedCategoryPage({required this.selectedCategory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryIcon(
                color: selectedCategory.color,
                iconName: selectedCategory.icon,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                selectedCategory.name,
                style: TextStyle(color: selectedCategory.color, fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            children:
                List.generate(selectedCategory.subcategoris.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                subCategory:
                                    selectedCategory.subcategoris[index],
                              )));
                },
                child: Container(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/imgs/" +
                              selectedCategory.subcategoris[index].imgName +
                              ".png",
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        selectedCategory.subcategoris[index].name,
                        style: TextStyle(color: selectedCategory.color),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ))
        ],
      )),
    );
  }
}
