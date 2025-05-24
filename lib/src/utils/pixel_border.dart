import 'package:flutter/painting.dart';

/// A custom border with pixel-style sharp edges.
class PixelBorder extends BoxBorder {
  final Color color;
  final double width;

  const PixelBorder({
    this.color = const Color(0xFF000000),
    this.width = 1.0,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(width);

  @override
  bool get isUniform => true;

  @override
  void paint(Canvas canvas, Rect rect, {
    TextDirection? textDirection,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
  }) {
    if (shape != BoxShape.rectangle || borderRadius != null) return;

    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect.deflate(width / 2), paint);
  }

  @override
  ShapeBorder scale(double t) => PixelBorder(color: color, width: width * t);

  // These aren't typically needed unless using directional-specific logic.
  @override
  BorderSide get top => BorderSide(color: color, width: width);
  @override
  BorderSide get bottom => BorderSide(color: color, width: width);
  @override
  BorderSide get left => BorderSide(color: color, width: width);
  @override
  BorderSide get right => BorderSide(color: color, width: width);
}


