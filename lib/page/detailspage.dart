import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/models/subcategory.dart';
import 'package:orilla_fresca_app/widget/categorygoryPartList.dart';
import 'package:orilla_fresca_app/widget/categoryicon.dart';
import 'package:orilla_fresca_app/widget/mainappbar.dart';
import 'package:orilla_fresca_app/widget/thebutton.dart';
import 'package:orilla_fresca_app/widget/unitpricewidget.dart';

class DetailsPage extends StatefulWidget {
  SubCategory subCategory;

  DetailsPage({required this.subCategory});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(50)),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/imgs/" +
                                widget.subCategory.imgName +
                                "_desc.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned.fill(
                    child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent
                      ])),
                )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory.color,
                            iconName: widget.subCategory.icon,
                            size: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Carne de cerdo",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: widget.subCategory.color,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  "\$50.00 / lb",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 20,
                                offset: Offset.zero)
                          ]),
                      child: Row(
                        children: const [
                          Text(
                            "3",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    )),
                MainAppBar(
                  themeColor: Colors.white,
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CategoryPartList(subCategory: widget.subCategory),
                UnitPriceWidget(),

                TheButton(
                  onClick: () {},
                  name: "Anadir al Carrito",
                ),
                TheButton(
                  onClick: () {},
                  name: "Location del Producto",
                ),
                // ThemeButton(
                //   onClick: () {},
                //   label: "Anadir al Carrito",
                //   icon: const Icon(
                //     Icons.shopping_cart,
                //     color: Colors.white,
                //   ),
                // ),
                // ThemeButton(
                //   onClick: () {},
                //   label: "Location del Producto",
                //   icon: const Icon(
                //     Icons.location_pin,
                //     color: Colors.white,
                //   ),
                //   color: AppColors.DARK_GREEN,
                //   // hightLight: AppColors.DARK_GREEN,
                // )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
