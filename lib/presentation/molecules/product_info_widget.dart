import 'package:fake_store_widgets_package/presentation/atoms/product_price_widget.dart';
import 'package:fake_store_widgets_package/presentation/atoms/title_widget.dart';
import 'package:flutter/material.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget(
      {super.key, required this.title, required this.price});

  final String? title;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleWidget(text: title, size: 16),
        const SizedBox(height: 5),
        ProductPriceWidget(
          price: price,
          fontSize: 14,
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
