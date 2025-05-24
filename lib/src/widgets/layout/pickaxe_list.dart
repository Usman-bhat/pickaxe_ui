import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';

class PickaxeList extends StatelessWidget {
  final List<String> items;
  final bool showSeparators;

  const PickaxeList({
    super.key,
    required this.items,
    this.showSeparators = true,
  });

@override
Widget build(BuildContext context) {
  final padding = MediaQuery.of(context).size.width * 0.04;
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) => Container(
      padding: EdgeInsets.all(padding),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: PickaxeColors.surface,
        border: Border.all(color: PickaxeColors.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        items[index],
        style: TextStyle(color: PickaxeColors.textPrimary),
      ),
    ),
  );
}

}


