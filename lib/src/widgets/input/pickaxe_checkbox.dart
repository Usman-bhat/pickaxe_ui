/*import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';

class PickaxeCheckbox extends StatelessWidget {
  const PickaxeCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 24.0,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: PixelBorder
          .all(
            color: Theme.of(context).primaryColor,
            width: 1,
          ),
        ),
        child: value
            ? Icon(
                Icons.check,
                size: size * 0.8,
                color: Theme.of(context).primaryColor,
              )
            : null,
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';

class PickaxeCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const PickaxeCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onChanged(!value),
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: PickaxeColors.border,
                width: 2,
              ),
              color: value ? PickaxeColors.primary : PickaxeColors.surface,
            ),
            child: value
                ? const Icon(Icons.check, size: 16, color: PickaxeColors.textOnPrimary)
                : null,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Minecraft',
            color: PickaxeColors.text,
          ),
        ),
      ],
    );
  }
}
