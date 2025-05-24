import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';

class PickaxeProgressBar extends StatelessWidget {
  final double value;
  final double height;
  final Color emptyColor;
  final Color fillColor;
  final Color borderColor;
  final double borderWidth;

  const PickaxeProgressBar({
    super.key,
    required this.value,
    this.height = 16.0,
    this.emptyColor = PickaxeColors.textPrimary,
    this.fillColor = PickaxeColors.primary,
    this.borderColor = PickaxeColors.primaryDark,
    this.borderWidth = 2.0,
  }) : assert(value >= 0.0 && value <= 1.0, 'Value must be between 0.0 and 1.0');

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromHeight(height),
      painter: _ProgressBarPainter(
        value: value,
        emptyColor: emptyColor,
        fillColor: fillColor,
        borderColor: borderColor,
        borderWidth: borderWidth,
      ),
    );
  }
}

class _ProgressBarPainter extends CustomPainter {
  final double value;
  final Color emptyColor;
  final Color fillColor;
  final Color borderColor;
  final double borderWidth;

  _ProgressBarPainter({
    required this.value,
    required this.emptyColor,
    required this.fillColor,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final fillWidth = size.width * value;
    final fillRect = Rect.fromLTWH(0, 0, fillWidth, size.height);

    // Draw the background (empty part)
    final emptyPaint = Paint()..color = emptyColor;
    canvas.drawRect(rect, emptyPaint);

    // Draw the filled part
    final fillPaint = Paint()..color = fillColor;
    canvas.drawRect(fillRect, fillPaint);

    // Draw the border
    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;
    canvas.drawRect(rect, borderPaint);
  }

  @override
  bool shouldRepaint(covariant _ProgressBarPainter oldDelegate) {
    return oldDelegate.value != value ||
        oldDelegate.emptyColor != emptyColor ||
        oldDelegate.fillColor != fillColor ||
        oldDelegate.borderColor != borderColor ||
        oldDelegate.borderWidth != borderWidth;
  }
}


