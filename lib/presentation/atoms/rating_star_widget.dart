import 'package:flutter/material.dart';

class RatingStarWidget extends StatelessWidget {
  const RatingStarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.star, color: Colors.amber, size: 24);
  }
}
