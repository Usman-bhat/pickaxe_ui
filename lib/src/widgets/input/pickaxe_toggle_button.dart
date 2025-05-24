import 'package:flutter/material.dart';

import '../../theme/pickaxe_colors.dart';

class PickaxeToggleButton extends StatefulWidget {
  final bool isSelected;
  final ValueChanged<bool> onToggle;
  final String label;

  const PickaxeToggleButton({
    super.key,
    required this.isSelected,
    required this.onToggle,
    required this.label,
  });

  @override
  _PickaxeToggleButtonState createState() => _PickaxeToggleButtonState();
}

class _PickaxeToggleButtonState extends State<PickaxeToggleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onToggle(!widget.isSelected);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: widget.isSelected ? PickaxeColors.accent : PickaxeColors.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: PickaxeColors.border),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.isSelected ? PickaxeColors.textOnAccent : PickaxeColors.textPrimary,
          ),
        ),
      ),
    );
  }
}