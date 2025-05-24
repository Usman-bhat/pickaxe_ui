/*import 'package:flutter/material.dart';
//import 'package:myapp/pickaxe_ui.dart';
import '/src/theme/pickaxe_theme.dart';
import '/src/utils/pixel_border.dart';

class PickaxeCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double borderWidth;
  final EdgeInsetsGeometry padding;

  const PickaxeCard({
    super.key,
    required this.child,
    this.color,
    this.borderWidth = 2.0,
    this.padding = const EdgeInsets.all(8.0),
  });

  @override
  Widget build(BuildContext context) {
    final theme = PickaxeTheme.of(context);
    final cardColor = color ?? theme.colors.surface;
    final borderColor = theme.colors.onSurface.withOpacity(0.5); // Example border color

    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        border: PixelBorder.all(
          color: borderColor,
          pixelSize: borderWidth,
        ),
      ),
      padding: padding,
      child: child,
    );
  }
}*/



import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const PickaxeCard({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: backgroundColor ?? PickaxeColors.surface,
        shape: PixelBorder(
          color: PickaxeColors.border,
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}



