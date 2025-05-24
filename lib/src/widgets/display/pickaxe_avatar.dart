import 'package:flutter/material.dart';

import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final double size;
  final Color borderColor;

  const PickaxeAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.size = 50.0,
    this.borderColor = PickaxeColors.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: PixelBorder(color: borderColor, width: 2.0),
        image:
            imageUrl != null
                ? DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.none, // pixel look
                )
                : null,
        color: PickaxeColors.surface,
      ),
      child:
          imageUrl == null
              ? Center(
                child: Text(
                  initials ?? '?',
                  style: TextStyle(
                    color: PickaxeColors.textOnPrimary,
                    fontSize: size / 3,
                    fontFamily: 'Minecraft',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              : null,
    );
  }
}
