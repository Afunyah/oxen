import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FFButtonOptions {
  FFButtonOptions(
      {

      // this.textStyle,
      // this.elevation = 0.0,
      // this.height = 0.0,
      // this.width = 0.0,
      // this.padding,
      // this.color = Colors.black,
      // this.disabledColor = Colors.red,
      // this.disabledTextColor = Colors.red,
      // this.splashColor = Colors.blue,
      // this.iconSize = 0.0,
      // this.iconColor = Colors.red,
      // this.iconPadding,
      // this.borderRadius = 0.0,
      // this.borderSide = BorderSide.none

      this.textStyle,
      this.elevation,
      this.height,
      this.width,
      this.padding,
      this.color = Colors.blue,
      this.disabledColor,
      this.disabledTextColor,
      this.splashColor,
      this.iconSize,
      this.iconColor,
      this.iconPadding,
      this.borderRadius = 0.0,
      this.borderSide});

  TextStyle? textStyle;
  double? elevation;
  double? height;
  double? width;
  EdgeInsetsGeometry? padding;
  Color color;
  Color? disabledColor;
  Color? disabledTextColor;
  Color? splashColor;
  double? iconSize;
  Color? iconColor;
  EdgeInsetsGeometry? iconPadding;
  double borderRadius;
  BorderSide? borderSide;
}

// ignore: must_be_immutable
class FFButtonWidget extends StatelessWidget {
  FFButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconData,
    required this.options,
  }) : super(key: key);

  String text;
  Widget? icon;
  IconData? iconData;
  VoidCallback onPressed;
  FFButtonOptions options;

  @override
  Widget build(BuildContext context) {
    Widget textWidget = AutoSizeText(
      text,
      style: options.textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
    if (icon != null || iconData != null) {
      textWidget = Flexible(child: textWidget);
      return Container(
        height: options.height,
        width: options.width,
        child: RaisedButton.icon(
          icon: Padding(
            padding: options.iconPadding ?? EdgeInsets.zero,
            child: icon ??
                FaIcon(
                  iconData,
                  size: options.iconSize,
                  color: options.iconColor ?? options.textStyle!.color,
                ),
          ),
          label: textWidget,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(options.borderRadius),
            side: options.borderSide ?? BorderSide.none,
          ),
          color: options.color,
          colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
          textColor: options.textStyle!.color,
          disabledColor: options.disabledColor,
          disabledTextColor: options.disabledTextColor,
          elevation: options.elevation,
          splashColor: options.splashColor,
        ),
      );
    }

    return Container(
      height: options.height,
      width: options.width,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(options.borderRadius),
          side: options.borderSide ?? BorderSide.none,
        ),
        textColor: options.textStyle!.color,
        color: options.color,
        colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
        disabledColor: options.disabledColor,
        disabledTextColor: options.disabledTextColor,
        padding: options.padding,
        elevation: options.elevation,
        child: textWidget,
      ),
    );
  }
}
