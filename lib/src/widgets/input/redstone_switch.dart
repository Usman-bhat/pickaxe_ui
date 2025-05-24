import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

import '../../utils/pickaxe_textures.dart';

class RedstoneSwitch extends StatefulWidget {
  const RedstoneSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  _RedstoneSwitchState createState() => _RedstoneSwitchState();
}

class _RedstoneSwitchState extends State<RedstoneSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    if (widget.value) {
      _animationController.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(covariant RedstoneSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (widget.value) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: PickaxeColors.border,
                width: 2.0,
              ),
              color: PickaxeColors.surface,
            ),
            child: Center(
              child: Image.asset(
                widget.value ? PickaxeTextures.redstoneTorchOn : PickaxeTextures.redstoneTorchOff,
                width: 32.0 * _animation.value + 16.0 * (1.0 - _animation.value),
                height: 32.0 * _animation.value + 16.0 * (1.0 - _animation.value),
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: widget.value
                      ? PickaxeColors.error // Using error color as a placeholder for redstone
 : PickaxeColors.textSecondary, // Fallback for off state
                  width: 32.0 * _animation.value + 16.0 * (1.0 - _animation.value),
                  height: 32.0 * _animation.value + 16.0 * (1.0 - _animation.value),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}