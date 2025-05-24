import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

import '../../utils/pickaxe_textures.dart';

class HeartMeter extends StatelessWidget {
  final double health; // 0.0 to 20.0

  const HeartMeter({
    super.key,
    required this.health,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> hearts = [];
    int fullHearts = (health / 2).floor();
    bool hasHalfHeart = health % 2 != 0;
    int emptyHearts = 10 - fullHearts - (hasHalfHeart ? 1 : 0);

    // Add full hearts
    for (int i = 0; i < fullHearts; i++) {
      hearts.add(
        _buildHeart(PickaxeTextures.heartFul),
      );
    }

    // Add half heart
    if (hasHalfHeart) {
      hearts.add(
        _buildHeart(PickaxeTextures.heartHalf),
      );
    }

    // Add empty hearts
    for (int i = 0; i < emptyHearts; i++) {
 hearts.add(_buildHeart(PickaxeTextures.heartEmpty),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: hearts,
    );
  }

  Widget _buildHeart(String? texturePath) {
    return SizedBox(
      width: 16,
      height: 16,
      child: texturePath != null
          ? Image.asset(
              texturePath,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                // Fallback to color if texture fails
                return Container(color: PickaxeColors.error);
              },
            )
          : Container(
              color: PickaxeColors.error, // Default color if no texture path
            ),
    );
  }
}