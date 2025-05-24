import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeBadge extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double padding;

  const PickaxeBadge({
    super.key,
    required this.label,
    this.backgroundColor = PickaxeColors.accent,
    this.textColor = PickaxeColors.textOnPrimary,
    this.padding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
  color: backgroundColor,
  border: PixelBorder(color: PickaxeColors.border),
  shape: BoxShape.rectangle,
),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    
    );
  }
}


