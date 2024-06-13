import 'package:atomic_design/presentation/molecules/labelled_icon_widget.dart.dart';
import 'package:flutter/material.dart';

class CardWithIconWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onPressed;

  const CardWithIconWidget({super.key, required this.title, required this.subtitle, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
          LabelledIconWidget(label: title, icon: icon, onPressed: onPressed),
        ],
      ),
    );
  }
}
