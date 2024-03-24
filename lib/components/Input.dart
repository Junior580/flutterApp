import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Color backgroundColor;
  final Color textColor;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
          icon: icon != null ? Icon(icon, color: textColor) : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
