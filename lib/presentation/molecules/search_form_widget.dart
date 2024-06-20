import 'package:flutter/material.dart';

class SearchFormWidget extends StatelessWidget {
  const SearchFormWidget(
      {super.key, required this.controller, required this.onSearch});

  final TextEditingController controller;
  final void Function(String text) onSearch;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Buscar productos'),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            onSearch(controller.text);
          },
        ),
      ],
    );
  }
}
