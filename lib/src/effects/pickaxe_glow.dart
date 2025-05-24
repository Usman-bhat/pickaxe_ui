import 'package:flutter/material.dart';

class PickaxeGlow extends StatefulWidget {
  final Widget child;

  const PickaxeGlow({super.key, required this.child});

  @override
  State<PickaxeGlow> createState() => _PickaxeGlowState();
}

class _PickaxeGlowState extends State<PickaxeGlow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _glow;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
    _glow = Tween(begin: 0.0, end: 10.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _glow,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.6),
                blurRadius: _glow.value,
                spreadRadius: _glow.value / 2,
              ),
            ],
          ),
          child: widget.child,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}