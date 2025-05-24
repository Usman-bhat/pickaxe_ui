import 'package:flutter/material.dart';

class PickaxeTexture extends StatelessWidget {
  final Widget child;
  final String assetPath;
  final BoxFit fit;
  final double opacity;
  final ImageRepeat repeat;
  final Alignment alignment;
  final BlendMode? blendMode;
  final Color? color;
  final bool textureBehind;

  const PickaxeTexture({
    super.key,
    required this.child,
    this.assetPath = 'lib/assets/textures/stone.png',
    this.fit = BoxFit.cover,
    this.opacity = 0.2,
    this.repeat = ImageRepeat.repeat,
    this.alignment = Alignment.center,
    this.blendMode,
    this.color,
    this.textureBehind = true,
  });

  @override
  Widget build(BuildContext context) {
    final texture = Opacity(
      opacity: opacity,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          color ?? Colors.transparent,
          blendMode ?? BlendMode.dst,
        ),
        child: Image.asset(
          assetPath,
          package: 'pickaxe_ui',
          fit: fit,
          repeat: repeat,
          alignment: alignment,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );

    return Stack(children: textureBehind ? [texture, child] : [child, texture]);
  }
}
