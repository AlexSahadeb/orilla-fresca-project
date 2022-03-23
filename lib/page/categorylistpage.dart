import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/helpers/utils.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/page/selectedcategorypage.dart';
import 'package:orilla_fresca_app/widget/categorybuttombar.dart';
import 'package:orilla_fresca_app/widget/categorycard.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categorice = Utils.getMocketCategory();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: IconFont(
            color: AppColors.MAIN_COLOR,
            size: 40,
            iconName: IconFontHelper.LOGO),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            child: ClipOval(
              child: Image.asset("assets/imgs/me.jpg"),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Seleccione una category:",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.only(bottom: 100),
                        itemCount: categorice.length,
                        itemBuilder: (BuildContext context, index) {
                          return BuildCategoryCard(
                            categorice: categorice[index],
                            onCardClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SelectedCategoryPage(
                                            selectedCategory: categorice[index],
                                          )));
                            },
                          );
                        }))
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset.zero)
                ]),
                padding: const EdgeInsets.only(bottom: 20),
                child: CategoryButtomBar(),
              ),
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
