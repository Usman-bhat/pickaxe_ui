import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/widgets/layout/inventory_slot.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';
import '../../utils/pickaxe_textures.dart';

class ChestGrid extends StatelessWidget {
  final List<Widget> children;
  final int rows;
  final int columns;

  const ChestGrid({
    super.key,
    required this.children,
    this.rows = 3,
    this.columns = 9,
  }) : assert(rows == 3 || rows == 6, 'Rows must be 3 or 6'),
       assert(columns == 9, 'Columns must be 9');

@override
Widget build(BuildContext context) {
  final String texturePath = PickaxeTextures.defaultWood;

  return Container(
    decoration: ShapeDecoration(
      image: DecorationImage(
        image: AssetImage(texturePath),
        repeat: ImageRepeat.repeat,
      ),
      color: texturePath.isEmpty ? PickaxeColors.surface : null,
      shape: PixelBorder(
        color: PickaxeColors.border,
        width: 2.0,
      ),
    ),
    padding: const EdgeInsets.all(8.0),
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        childAspectRatio: 1.0,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: rows * columns,
      itemBuilder: (context, index) {
        return InventorySlot(
          child: index < children.length ? children[index] : null,
        );
      },
    ),
  );
}

}


