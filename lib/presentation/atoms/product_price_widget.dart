import 'package:flutter/material.dart';

class ProductPriceWidget extends StatelessWidget {
  const ProductPriceWidget(
      {super.key,
      required this.price,
      required this.fontSize,
      required this.color});

  final double? price;

  final double fontSize;

  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${price?.toStringAsFixed(2)}',
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
