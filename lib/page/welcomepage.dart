import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/page/categorylistpage.dart';
import 'package:orilla_fresca_app/page/onbordingpage.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';
import 'package:orilla_fresca_app/widget/thebutton.dart';

class WelComePage extends StatefulWidget {
  @override
  State<WelComePage> createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "assets/imgs/of_main_bg.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: IconFont(
                            color: Colors.white,
                            size: 130,
                            iconName: IconFontHelper.MAIN_LOGO),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Bienvenido",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Products fresco.\nSaludables.A Tiempo",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TheButton(
                        name: "Tratar Ahora!",
                        onClick: () {},
                      )
                      // ThemeButton(
                      //     icon: Icon(Icons.arrow_right),
                      //     onClick: () {},
                      //     label: "Tratar Ahora!",
                      //     //  hightLight: Colors.green[900],
                      //     color: AppColors.MAIN_COLOR),
                      ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TheButton(
                        name: "Hacer Onbording",
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBordingPage()));
                        },
                      )
                      //  ThemeButton(
                      //     icon: Icon(Icons.home),
                      //     label: "Hacer Onbording",
                      //     onClick: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => OnBordingPage()));
                      //     })
                      // ThemeButton(
                      //     icon: Icon(Icons.home),
                      //     onClick: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => OnBordingPage()));
                      //     },
                      //     label: "Hacer Onbording",
                      //     //hightLight: Colors.green[900],
                      //     color: AppColors.DARK_GREEN),
                      ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TheButton(
                          name: "Hacer Login",
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryListPage()));
                          })
                      //  ThemeButton(
                      //   icon: Icon(Icons.login_outlined),
                      //   onClick: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => CategoryListPage()));
                      //   },
                      //   // labelColor: AppColors.MAIN_COLOR,
                      //   color: AppColors.DARK_GREEN,
                      //   // hightLight: AppColors.MAIN_COLOR.withOpacity(0.1),
                      //   // borderColor: AppColors.MAIN_COLOR,
                      //   // borderWidth: 3,
                      //   label: "Hacer Login",
                      // ),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
