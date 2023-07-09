import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  CustomColumn({required this.Icon, required this.Text});
  final Widget Icon;
  final Widget Text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      decoration: BoxDecoration(
          color: Colors.green.shade500,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Icon,
          SizedBox(height: 5),
          Text,
        ],
      ),
    );
  }
}
