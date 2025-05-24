import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

class PickaxeTooltip extends StatelessWidget {
  final String message;
  final Widget child;

  const PickaxeTooltip({
    super.key,
    required this.message,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      decoration: BoxDecoration(
        color: PickaxeColors.minecraftLava,
        border: Border.all(
          color: PickaxeColors.border,
          width: 2,
        ),
      ),
      textStyle: const TextStyle(
        color: PickaxeColors.textOnPrimary,
        fontFamily: 'monospace',
      ),
      child: child,
    );
  }
}

