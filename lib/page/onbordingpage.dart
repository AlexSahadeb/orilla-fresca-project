import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/helpers/utils.dart';
import 'package:orilla_fresca_app/models/onbordingcontent.dart';
import 'package:orilla_fresca_app/page/categorylistpage.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';
import 'package:orilla_fresca_app/widget/mainappbar.dart';
import 'package:orilla_fresca_app/widget/thebutton.dart';

class OnBordingPage extends StatefulWidget {
  @override
  _OnBordingPageState createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  List<OnBordingContent> _content = Utils.getOnBording();
  int indexPage = 0;
  PageController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: PageView(
                    controller: _controller,
                    onPageChanged: (int page) {
                      setState(() {
                        indexPage = page;
                      });
                    },
                    children: List.generate(
                        _content.length,
                        (index) => Container(
                              padding: const EdgeInsets.all(40),
                              margin: const EdgeInsets.only(
                                  left: 40, right: 40, top: 40, bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.MAIN_COLOR
                                            .withOpacity(0.3),
                                        blurRadius: 20,
                                        offset: Offset.zero)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: IconFont(
                                              color: AppColors.MAIN_COLOR,
                                              size: 40,
                                              iconName: IconFontHelper.LOGO,
                                            ),
                                          ),
                                          Image.asset(
                                              "assets/imgs/${_content[index].img}.png"),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            _content[index].message,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: AppColors.MAIN_COLOR,
                                                fontSize: 22),
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Visibility(
                                          visible: index == _content.length - 1,
                                          child: TheButton(
                                            onClick: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CategoryListPage()));
                                            },
                                            name: "Entrar Ahora!",
                                          ),
                                          //  ThemeButton(
                                          //   icon: Icon(Icons
                                          //       .arrow_back_ios_new_outlined),
                                          //   onClick: () {
                                          //     Navigator.push(
                                          //         context,
                                          //         MaterialPageRoute(
                                          //             builder: (context) =>
                                          //                 CategoryListPage()));
                                          //   },
                                          //   label: "Entrar Ahora!",
                                          //   color: AppColors.DARK_GREEN,
                                          //   hightLight: AppColors.DARKER_GREEN,
                                          // ),
                                        ),
                                      ))
                                ],
                              ),
                            )))),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _content.length,
                    (index) => GestureDetector(
                          onTap: () {
                            _controller!.animateTo(
                                MediaQuery.of(context).size.width * index,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.MAIN_COLOR,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 6,
                                    color: indexPage == index
                                        ? const Color(0xFFC1E09E)
                                        : Theme.of(context).canvasColor)),
                          ),
                        ))),
            const SizedBox(
              height: 20,
            ),
            TheButton(
              onClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryListPage()));
              },
              name: "Saltar Onbording",
            )
            // ThemeButton(
            //   icon: Icon(Icons.arrow_back_ios_new),
            //   onClick: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => CategoryListPage()));
            //   },
            //   label: "Saltar Onbording",
            // )
          ],
        ),
      ),
    );
  }
}
