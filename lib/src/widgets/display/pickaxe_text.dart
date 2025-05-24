/*
import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_theme.dart';

class PickaxeText extends StatelessWidget {
  const PickaxeText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final theme = PickaxeTheme.of(context);
    final defaultStyle = theme.typography.body1;
    final mergedStyle = defaultStyle.merge(style);

    return Text(
      data,
      style: mergedStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
*/


import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
class PickaxeText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextStyle? style;

  const PickaxeText(
    this.text, {
    super.key,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = TextStyle(
      fontFamily: 'Minecraft',
      fontSize: fontSize ?? 16,
      color: color ?? PickaxeColors.text,
      fontWeight: fontWeight ?? FontWeight.normal,
    );

    return Text(
      text,
      style: style != null ? defaultStyle.merge(style) : defaultStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
