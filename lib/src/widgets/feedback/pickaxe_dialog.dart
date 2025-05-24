import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';

class PickaxeDialog {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
    String confirmText = 'OK',
    VoidCallback? onConfirm,
  }) async {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: PickaxeColors.minecraftWood,
          shape: PixelBorder(color: PickaxeColors.border, width: 3),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'monospace',
                    color: PickaxeColors.textOnPrimary,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 16,
                    color: PickaxeColors.textOnPrimary,
                    fontFamily: 'monospace',
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PickaxeColors.primary,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (onConfirm != null) onConfirm();
                  },
                  child: Text(
                    confirmText,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      color: PickaxeColors.textOnAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
