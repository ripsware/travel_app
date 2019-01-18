import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {

  SearchBox(this.controller, {
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius = 16,
    this.elevation: 8,
    this.padding
  });

  final TextEditingController controller;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final double borderRadius;
  final double elevation;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => Material(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    elevation: 8,
    child: Container(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: padding,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    ),
  );
}
