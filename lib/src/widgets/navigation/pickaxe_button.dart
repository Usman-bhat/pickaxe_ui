/*
import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_theme.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';

class PickaxeButton extends StatelessWidget {
  const PickaxeButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.backgroundColor,
    this.foregroundColor,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = PickaxeTheme.of(context);
    final effectiveBackgroundColor = backgroundColor ?? theme.buttonColor;
    final effectiveForegroundColor = foregroundColor ?? theme.buttonTextColor;

    return InkWell(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: effectiveBackgroundColor,
          border: PixelBorder(
            color: theme.borderColor,
            width: theme.borderPixelSize,
          ),
        ),
        child: Padding(
          padding: padding,
          child: DefaultTextStyle(
            style: theme.buttonTextStyle.copyWith(
              color: effectiveForegroundColor,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

*/
import 'package:flutter/material.dart';
import '../../effects/pickaxe_bounce.dart';
import '../../effects/pickaxe_glow.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';
class PickaxeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double borderWidth;
  final Color? color;
  final bool glow;
  final bool bounce;

  const PickaxeButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderWidth = 2.0,
    this.color,
    this.glow = false,
    this.bounce = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget buttonContent = Material(
      color: color ?? PickaxeColors.surface,
      shape: const RoundedRectangleBorder(),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: ShapeDecoration(
            shape: PixelBorder(
              color: PickaxeColors.border,
              width: borderWidth,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: DefaultTextStyle(
            style: TextStyle(
              fontFamily: 'Minecraft',
              color: PickaxeColors.text,
            ),
            child: child,
          ),
        ),
      ),
    );

    if (glow) {
      buttonContent = PickaxeGlow(child: buttonContent);
    }

    if (bounce) {
      buttonContent = PickaxeBounce(child: buttonContent);
    }

    return buttonContent;
  }
}
