import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeGrid extends StatelessWidget {
  final List<String> items;
  final int crossAxisCount;

  const PickaxeGrid({
    super.key,
    required this.items,
    this.crossAxisCount = 2,
  });

  @override
  Widget build(BuildContext context) {
  final aspectRatio = MediaQuery.of(context).size.width > 600 ? 1.5 : 1.0;
return GridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: crossAxisCount,
    childAspectRatio: aspectRatio,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
  ),
  itemCount: items.length,
  itemBuilder: (context, index) => Container(
    decoration: BoxDecoration(
  color: PickaxeColors.primaryDark,
  border: PixelBorder(color: PickaxeColors.border),
),
    child: Center(
      child: Text(
        items[index],
        style: TextStyle(color: PickaxeColors.textPrimary),
      ),
    ),
  ),
);
  }
}


