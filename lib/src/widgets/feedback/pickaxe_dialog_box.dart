import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';
import '../../utils/pixel_border.dart';

class PickaxeDialogBox extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  const PickaxeDialogBox({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: TextStyle(color: PickaxeColors.textPrimary)),
      content: Container(
        decoration: BoxDecoration(
          color: PickaxeColors.surface,
          border: PixelBorder(color: PickaxeColors.border, width: 2.0),
        ),
        child: Text(content, style: TextStyle(color: PickaxeColors.text)),
      ),
      actions: actions,
    );
  }
}