import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

class XPBar extends StatelessWidget {
  final double progress;

  const XPBar({
    super.key,
    required this.progress,
  })  : assert(progress >= 0.0 && progress <= 1.0,
            'Progress must be between 0.0 and 1.0');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.0, // Typical height of Minecraft XP bar
      child: ClipRRect(
        // Optional: to round the corners slightly like Minecraft
        borderRadius: BorderRadius.circular(2.0),
        child: LinearProgressIndicator( // Use LinearProgressIndicator for the bar
          value: progress,
 backgroundColor: PickaxeColors.secondary, // Use a darker color for the background
          valueColor: AlwaysStoppedAnimation<Color>(
 PickaxeColors.accent, // Use an accent color for the progress
          ),
        ),
      ),
    );
  }
}