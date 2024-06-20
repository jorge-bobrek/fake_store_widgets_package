import 'package:fake_store_widgets_package/presentation/atoms/label_widget.dart';
import 'package:fake_store_widgets_package/presentation/atoms/rating_star_widget.dart';
import 'package:fake_store_widgets_package/presentation/atoms/text_widget.dart';
import 'package:flutter/material.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget(
      {super.key, required this.rate, required this.count});

  final double? rate;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RatingStarWidget(),
        const SizedBox(width: 5),
        LabelWidget(text: rate.toString(), size: 18),
        const SizedBox(width: 10),
        TextWidget(text: '${count.toString()} opiniones', size: 18),
      ],
    );
  }
}
