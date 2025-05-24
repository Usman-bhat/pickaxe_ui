import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';

class PickaxeDivider extends StatelessWidget {
  final double thickness;
  final Color color;

  const PickaxeDivider({
    super.key,
    this.thickness = 2.0,
    this.color = PickaxeColors.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness,
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}


