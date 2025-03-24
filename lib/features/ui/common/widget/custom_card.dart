import 'package:flutter/material.dart';

// Custom Card Widget
class CustomCard extends StatelessWidget {
  final Widget child;
  final Color color;

  const CustomCard({
    super.key,
    required this.child,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: child,
      ),
    );
  }
}
