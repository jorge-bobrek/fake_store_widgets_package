// lib/presentation/widgets/organisms/product_details_widget.dart
import 'package:fake_store_widgets_package/data/models/product_item_model.dart';
import 'package:fake_store_widgets_package/fake_store_widgets_package.dart';
import 'package:fake_store_widgets_package/presentation/atoms/product_price_widget.dart';
import 'package:fake_store_widgets_package/presentation/molecules/product_rating_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  final ProductItemModel product;

  const ProductDetailsWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelWidget(text: product.title, size: 28),
          const SizedBox(height: 10),
          ProductPriceWidget(
              price: product.price, fontSize: 24, color: Colors.green),
          const SizedBox(height: 20),
          const LabelWidget(text: 'Categoría:', size: 20),
          const SizedBox(height: 5),
          TextWidget(text: product.category, size: 18),
          const SizedBox(height: 20),
          const LabelWidget(text: 'Descripción:', size: 20),
          const SizedBox(height: 5),
          TextWidget(text: product.description, size: 18),
          const SizedBox(height: 20),
          if (product.rating != null) ...[
            const LabelWidget(text: 'Descripción:', size: 20),
            const SizedBox(height: 5),
            ProductRatingWidget(
              rate: product.rating?.rate,
              count: product.rating?.count,
            ),
          ],
        ],
      ),
    );
  }
}
