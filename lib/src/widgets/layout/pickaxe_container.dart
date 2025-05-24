import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderWidth;

  const PickaxeContainer({
    super.key,
    required this.child,
    this.color,
    this.padding = const EdgeInsets.all(8),
    this.margin = const EdgeInsets.all(4),
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: ShapeDecoration(
        shape: PixelBorder(
          color: PickaxeColors.border,
          width: borderWidth,
        ),
        color: color ?? PickaxeColors.surface,
      ),
      child: child,
    );
  }
}


