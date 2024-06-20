import 'package:fake_store_widgets_package/data/models/product_item_model.dart';
import 'package:fake_store_widgets_package/presentation/atoms/product_image_widget.dart';
import 'package:fake_store_widgets_package/presentation/molecules/product_info_widget.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(
      {super.key, required this.product, required this.trailing, this.onTap});

  final ProductItemModel product;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductImageWidget(imageUrl: product.image),
              const SizedBox(width: 10),
              Expanded(
                child: ProductInfoWidget(
                  title: product.title,
                  price: product.price,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: trailing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
