import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';
import '../../utils/pickaxe_textures.dart';

class InventorySlot extends StatelessWidget {
  final Widget? child;

  const InventorySlot({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(PickaxeTextures.defaultStoneBlock),
          fit: BoxFit.fill,
        ),
        border: const PixelBorder(
          width: 2.0,
          color: PickaxeColors.border,
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}