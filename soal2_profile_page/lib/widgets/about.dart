import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final Icon icon;
  final String label, value;

  const About({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: icon, title: Text(label), subtitle: Text(value));
  }
}
