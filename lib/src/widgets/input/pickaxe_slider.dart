import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';

class PickaxeSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;

  const PickaxeSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: min,
      max: max,
      onChanged: onChanged,
      activeColor: PickaxeColors.accent,
      inactiveColor: PickaxeColors.textSecondary,
      divisions: (max - min).toInt(),
      thumbColor: PickaxeColors.primary,
    );
  }
}