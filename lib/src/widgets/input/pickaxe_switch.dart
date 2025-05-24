import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';

class PickaxeSwitch extends StatefulWidget {
  const PickaxeSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;

  @override
  State<PickaxeSwitch> createState() => _PickaxeSwitchState();
}

class _PickaxeSwitchState extends State<PickaxeSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _animation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    if (widget.value) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(covariant PickaxeSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      widget.value ? _controller.forward() : _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeThumbColor = widget.activeColor ?? PickaxeColors.primary;
    final inactiveThumbColor = widget.inactiveColor ?? PickaxeColors.border;
    final activeTrackColor =
        widget.activeTrackColor ?? PickaxeColors.primaryLight;
    final inactiveTrackColor =
        widget.inactiveTrackColor ?? PickaxeColors.surface;
    final borderColor = PickaxeColors.border;

    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: Container(
        width: 48,
        height: 24,
        decoration: ShapeDecoration(
          color: widget.value ? activeTrackColor : inactiveTrackColor,
          shape: PixelBorder(
            color: borderColor,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: AlignTransition(
            alignment: _animation,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color:
                    widget.value ? activeThumbColor : inactiveThumbColor,
                shape: PixelBorder(
                  color: borderColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}