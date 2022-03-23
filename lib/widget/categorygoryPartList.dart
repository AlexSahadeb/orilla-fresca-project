import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/categorypart.dart';
import 'package:orilla_fresca_app/models/subcategory.dart';

class CategoryPartList extends StatefulWidget {
  SubCategory subCategory;
  CategoryPartList({required this.subCategory});
  @override
  _CategoryPartListState createState() => _CategoryPartListState();
}

class _CategoryPartListState extends State<CategoryPartList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Text("Seleccione la parts que desea:"),
        ),
        Container(
          height: 170,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.subCategory.parts.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.subCategory.parts.forEach((CategoryPart part) {
                        part.isSelected =
                            widget.subCategory.parts[index] == part;
                      });
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: widget.subCategory.parts[index].isSelected
                                ? Border.all(
                                    color: widget.subCategory.color, width: 7)
                                : null,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/imgs/" +
                                      widget.subCategory.parts[index].imgName +
                                      ".png",
                                ),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset.zero,
                                  blurRadius: 10)
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Text(
                          widget.subCategory.parts[index].name,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: widget.subCategory.color),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
