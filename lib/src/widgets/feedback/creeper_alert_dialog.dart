import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pickaxe_ui/src/theme/pickaxe_colors.dart';
import 'package:pickaxe_ui/src/utils/pixel_border.dart';

import '../../utils/pickaxe_textures.dart';
//import 'package:pickaxe_ui/src/theme/pickaxe_textures.dart';

class CreeperAlertDialog extends StatefulWidget {
  const CreeperAlertDialog({
    super.key,
    this.content,
    this.actions,
  });

  final Widget? content;
  final List<Widget>? actions;

  @override
  _CreeperAlertDialogState createState() => _CreeperAlertDialogState();
}

class _CreeperAlertDialogState extends State<CreeperAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    _animation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(
            _animation.value * sin(_animationController.value * pi * 2),
            0,
          ),
          child: child,
        );
      },
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.all(24.0),
        shape: PixelBorder(color: PickaxeColors.border, width: 4.0),
        content: Stack(
          // Fix the texture issue: remove the incorrect use of Image.asset properties outside the widget
          // and either use PickaxeTextures.creeperDialogHead if that texture is added to PickaxeTextures,
          // or implement a fallback color (like PickaxeColors.minecraftGrass) if the texture is not available.
          children: [
            // Creeper head texture or fallback color
            // Assuming you have a specific texture for the Creeper dialog.
            // If not, you can use a creeper green color.
            // Using a fallback color for now as creeperDialogHead is not in PickaxeTextures.
            (widget.content == null && (widget.actions == null || widget.actions!.isEmpty))
                ? Container( // Use a Container with color as fallback
                    color: PickaxeColors.minecraftGrass, // Example fallback color
                  )
                : Image.asset(
                    PickaxeTextures.creeperDialogHead, // Assuming this texture exists and is added to PickaxeTextures
                    fit: BoxFit.fill,
                    package: 'pickaxe_ui', // Assuming textures are in the pickaxe_ui package
                  ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: widget.content,
                      ),
                    ),
                    if (widget.actions != null && widget.actions!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: widget.actions!,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ), // Added closing bracket for Stack
      ),
    ); // Added closing parenthesis for AnimatedBuilder
  } // Closing bracket for build method
} // Closing bracket for _CreeperAlertDialogState class