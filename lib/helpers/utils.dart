import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/models/categorypart.dart';
import 'package:orilla_fresca_app/models/onbordingcontent.dart';
import 'package:orilla_fresca_app/models/subcategory.dart';

class Utils {
  static List<OnBordingContent> getOnBording() {
    return [
      OnBordingContent(
          message: "Productos\nfrescos, de la\ntierra a su mesa",
          img: "onboard1"),
      OnBordingContent(
          message: "Carnes y embutidos\nfrescos y saludables \npara su deleite",
          img: "onboard2"),
      OnBordingContent(
          message: "Adquieralos desde \n la comodidad de su\ndispositivo mobil",
          img: "onboard3")
    ];
  }

  static List<Category> getMocketCategory() {
    return [
      Category(
          name: "Carnes",
          icon: IconFontHelper.MEATS,
          color: AppColors.MEATS,
          imgName: "cat1",
          subcategoris: [
            SubCategory(
                parts: [
                  CategoryPart(
                      name: "Jemon", imgName: "cat1_1_p1", isSelected: false),
                  CategoryPart(
                      name: "Patas", imgName: "cat1_1_p2", isSelected: false),
                  CategoryPart(
                      name: "Tocineta",
                      imgName: "cat1_1_p3",
                      isSelected: false),
                  CategoryPart(
                      name: "Lomo", imgName: "cat1_1_p4", isSelected: false),
                  CategoryPart(
                      name: "Costillas",
                      imgName: "cat1_1_p5",
                      isSelected: false),
                  CategoryPart(
                      name: "Panza", imgName: "cat1_1_p6", isSelected: false),
                ],
                name: "Cerdo",
                icon: IconFontHelper.MEATS,
                color: AppColors.MEATS,
                imgName: "cat1_1",
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Cerdo",
                imgName: "cat1_1",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Vaca",
                imgName: "cat1_2",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Gallina",
                imgName: "cat1_3",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Pavo",
                imgName: "cat1_4",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Chilvo",
                imgName: "cat1_5",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
            SubCategory(
                color: AppColors.MEATS,
                name: "Conejo",
                imgName: "cat1_6",
                icon: IconFontHelper.MEATS,
                subcategoris: []),
          ]),
      Category(
          name: "Frutas",
          icon: IconFontHelper.FRUITS,
          color: AppColors.FRUITS,
          imgName: "cat2",
          subcategoris: []),
      Category(
          name: "Vegetales",
          icon: IconFontHelper.VEGS,
          color: AppColors.VEGS,
          imgName: "cat3",
          subcategoris: []),
      Category(
          name: "Semillas",
          icon: IconFontHelper.SEEDS,
          color: AppColors.SEEDS,
          imgName: "cat4",
          subcategoris: []),
      Category(
          name: "Dulces",
          icon: IconFontHelper.PASTRIES,
          color: AppColors.PASTRIES,
          imgName: "cat5",
          subcategoris: []),
      Category(
          name: "Especies",
          icon: IconFontHelper.SPICES,
          color: AppColors.SPICES,
          imgName: "cat6",
          subcategoris: []),
    ];
  }
}
