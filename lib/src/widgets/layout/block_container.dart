import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';
import 'package:flutter/services.dart';

class BlockContainer extends StatelessWidget {
  const BlockContainer({
    super.key,
    this.child,
    this.texturePath,
    this.dimension = 64.0,
    this.borderWidth = 4.0,
    this.color,
  });

  final Widget? child;
  final String? texturePath;
  final double dimension;
  final double borderWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _checkTexture(texturePath),
      builder: (context, snapshot) {
        final bool textureExists = snapshot.data ?? false;
        return Container(
          width: dimension,
          height: dimension,
          decoration: BoxDecoration(
            color: texturePath != null && textureExists
                ? null // Let the image handle the background if it exists
                : color ?? PickaxeColors.background,
            image: texturePath != null && textureExists
                ? DecorationImage(
                    image: AssetImage(texturePath!),
                    fit: BoxFit.cover,
                  )
                : null,
            border: PixelBorder(
              color: PickaxeColors.border, // Using a color from PickaxeColors
              width: borderWidth / 2,
            ),
          ),
          child: Center(child: child),
        );
      },
    );
  }

  Future<bool> _checkTexture(String? path) async {
    if (path == null) return false;
    try {
      await rootBundle.load(path);
      return true;
    } catch (_) {
      return false;
    }
  }
}