import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final InputDecoration? decoration;
  final bool obscureText;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;

  const PickaxeTextField({
    super.key,
    this.controller,
    this.hintText = '',
    this.decoration,
    this.obscureText = false,
    this.style,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: PixelBorder(
          color: PickaxeColors.border,
          width: 2,
        ),
        color: PickaxeColors.surface,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: maxLines,
        minLines: minLines,
        style: style ??
            const TextStyle(
              fontFamily: 'Minecraft',
              fontSize: 16,
              color: PickaxeColors.text,
            ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Minecraft',
            color: PickaxeColors.textSecondary,
          ),
        ).applyDefaults(
          Theme.of(context).inputDecorationTheme,
        ).copyWith(
          // Merge user-provided decoration
          labelText: decoration?.labelText,
          labelStyle: decoration?.labelStyle,
          contentPadding: decoration?.contentPadding,
          prefixIcon: decoration?.prefixIcon,
          suffixIcon: decoration?.suffixIcon,
        ),
      ),
    );
  }
}
