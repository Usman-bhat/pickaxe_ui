import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

class PickaxeIconButton extends StatelessWidget {
  const PickaxeIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 24.0,
    this.color,
    this.tooltip,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(4),
    this.borderWidth = 2.0,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final double size;
  final Color? color;
  final String? tooltip;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? PickaxeColors.primary;
    final bg = backgroundColor ?? PickaxeColors.surface;

    Widget picon = Icon(
      icon,
      size: size,
      color: effectiveColor,
    );

    if (tooltip != null) {
      picon = Tooltip(message: tooltip!, child: picon);
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: ShapeDecoration(
          color: bg,
          shape: PixelBorder(
            color: PickaxeColors.border,
            width: borderWidth,
          ),
        ),
        child: picon,
      ),
    );
  }
}