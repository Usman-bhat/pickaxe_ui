/*
import 'package:flutter/widgets.dart';

/// A custom painter to draw pixel-style shapes.
class PixelPainter extends CustomPainter {
  final Color color;
  final List<Offset> pixels;
  final double pixelSize;

  PixelPainter({
    required this.color,
    required this.pixels,
    required this.pixelSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    for (final pixel in pixels) {
      canvas.drawRect(
        Rect.fromLTWH(
          pixel.dx * pixelSize,
          pixel.dy * pixelSize,
          pixelSize,
          pixelSize,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is PixelPainter) {
      return oldDelegate.color != color ||
          oldDelegate.pixels != pixels ||
          oldDelegate.pixelSize != pixelSize;
    }
    return true;
  }
}

*/

import 'package:flutter/widgets.dart';

/// A custom painter to draw pixel-style shapes.
class PixelPainter extends CustomPainter {
  final Color color;
  final List<Offset> pixels;
  final double pixelSize;

  const PixelPainter({
    required this.color,
    required this.pixels,
    required this.pixelSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    for (final pixel in pixels) {
      canvas.drawRect(
        Rect.fromLTWH(
          pixel.dx * pixelSize,
          pixel.dy * pixelSize,
          pixelSize,
          pixelSize,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant PixelPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.pixels != pixels ||
        oldDelegate.pixelSize != pixelSize;
  }
}



