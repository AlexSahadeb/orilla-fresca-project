import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';

class UnitPriceWidget extends StatefulWidget {
  int amount = 0;
  double price = 50.0;
  double cost = 0;
  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();
}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Unidad"),
            TextSpan(
                text: "Libra", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "(max, 20)", style: TextStyle(fontSize: 12))
          ])),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.white.withOpacity(0.1))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.amount > 1
                    ? () {
                        setState(() {
                          widget.amount--;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: const Icon(Icons.remove_circle_outline,
                    size: 50, color: Colors.grey),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: widget.amount.toString(),
                          style: const TextStyle(fontSize: 40)),
                      const TextSpan(
                          text: "lbs", style: TextStyle(fontSize: 20))
                    ])),
                  ),
                ),
              ),
              GestureDetector(
                onTap: widget.amount < 20
                    ? () {
                        setState(() {
                          widget.amount++;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: const Icon(
                  Icons.add_circle_outline,
                  size: 50,
                  color: AppColors.MEATS,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 7, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(children: [
                const TextSpan(text: "Precio"),
                TextSpan(
                    text: "\$${widget.price}/ lb",
                    style: const TextStyle(fontWeight: FontWeight.bold))
              ])),
              Text(
                "\$${widget.cost}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
