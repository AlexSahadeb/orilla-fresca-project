import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';

// class ThemeButton extends StatelessWidget {
//   String label;
//   Function onClick;
//   Color color;
//   Color hightLight;
//   Widget icon;
//   // Color borderColor;
//   Color labelColor;
//   // double borderWidth;
//   ThemeButton(
//       {
//       //   this.borderColor = Colors.transparent,
//       // this.borderWidth = 4,
//       this.color = AppColors.MAIN_COLOR,
//       this.hightLight = AppColors.HIGHTLIGHT_DEFAULT,
//       required this.icon,
//       required this.label,
//       this.labelColor = Colors.white,
//       required this.onClick});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(50),
//         child: Material(
//           child: InkWell(
//             // splashColor: hightLight.withOpacity(0.2),
//             highlightColor: hightLight.withOpacity(0.2),
//             onTap: onClick(),
//             child: Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     color: color,
//                     border: Border.all(color: color, width: 4)),
//                 child: icon == null
//                     ? Text(
//                         label,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: labelColor,
//                             fontWeight: FontWeight.bold),
//                       )
//                     : Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           icon,
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             label,
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 color: labelColor,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       )),
//           ),
//         ),
//       ),
//     );
//   }
// }
class TheButton extends StatelessWidget {
  String? name;
  VoidCallback? onClick;
  TheButton({this.name, this.onClick});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onClick!, child: Text(name!));
  }
}
