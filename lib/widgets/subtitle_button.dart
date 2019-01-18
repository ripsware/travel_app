import 'package:flutter/material.dart';

class SubtitleButton extends StatelessWidget {

  SubtitleButton(this.title, {
    this.buttonText = "More", 
    this.onPressed,
    this.titleStyle,
    this.buttonStyle,
  });

  final String title;
  final String buttonText;
  final VoidCallback onPressed;
  final TextTheme titleStyle;
  final TextTheme buttonStyle;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(title,
        style: titleStyle ?? Theme.of(context).textTheme.subtitle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20
        ),
      ),
      FlatButton(
        child: Text(buttonText,
          style: buttonStyle ?? Theme.of(context).textTheme.subhead.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18
          ),
        ),
        onPressed: onPressed,
      )
    ],
  );
}
