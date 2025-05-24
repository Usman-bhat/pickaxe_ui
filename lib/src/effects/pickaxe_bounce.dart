import 'package:flutter/material.dart';

/// A bouncy scale animation on tap
class PickaxeBounce extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final VoidCallback? onTap;

  const PickaxeBounce({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 150),
    this.onTap,
  });

  @override
  State<PickaxeBounce> createState() => _PickaxeBounceState();
}

class _PickaxeBounceState extends State<PickaxeBounce>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
      lowerBound: 0.9,
      upperBound: 1.0,
    );
    _scale = _controller.drive(Tween(begin: 1.0, end: 0.9));
  }

  void _onTapDown(TapDownDetails _) => _controller.reverse();
  void _onTapUp(TapUpDetails _) => _controller.forward();
  void _onTapCancel() => _controller.forward();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) =>
            Transform.scale(scale: _scale.value, child: child),
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}