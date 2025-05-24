import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/widgets/layout/inventory_slot.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';
import '../../utils/pickaxe_textures.dart';


class CraftingGrid extends StatelessWidget {
  final List<Widget?> children;

  const CraftingGrid({
    super.key,
    required this.children,
  })  : assert(children.length == 9, 'CraftingGrid must have exactly 9 children.');

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(PickaxeTextures.defaultPineWood),
          repeat: ImageRepeat.repeat,
        ),
        color: PickaxeColors.surface,
        shape: PixelBorder(
          color: PickaxeColors.border,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return InventorySlot(
              child: children[index],
            );
          },
        ),
      ),
    );
  }
}



