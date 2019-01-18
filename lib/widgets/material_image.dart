import 'package:flutter/material.dart';

class MaterialImage extends StatelessWidget {

  MaterialImage(this.imageUrl, {
    this.width = 64,
    this.height = 64,
    this.borderRadius = 16,
    this.elevation = 8,
    this.margin,
    this.onTap,
    this.highlightColor,
    this.splashColor,
  });

  final String imageUrl;
  final double width;
  final double height;
  final double elevation;
  final EdgeInsets margin;
  final double borderRadius;
  final VoidCallback onTap;
  final Color highlightColor;
  final Color splashColor;

  @override
  Widget build(BuildContext context) => Container(
    margin: margin ?? EdgeInsets.symmetric(
        horizontal: 8
    ),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      elevation: 5,
      child: Container(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          child: Stack(
            children: <Widget>[
              Image.network(imageUrl,
                fit: BoxFit.contain,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: highlightColor ?? Color(0x33FFFFFF),
                  splashColor: splashColor ?? Color(0x77FFFFFF),
                  onTap: onTap,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
