import 'package:flutter/material.dart';

import '../../theme/pickaxe_colors.dart';


class PickaxeTabBar extends StatefulWidget {
  final List<String> tabs;
  final void Function(int)? onTabSelected;
  final int initialIndex;

  const PickaxeTabBar({
    super.key,
    this.tabs = const ['Tab 1', 'Tab 2', 'Tab 3'],
    this.onTabSelected,
    this.initialIndex = 0,
  });

  @override
  State<PickaxeTabBar> createState() => _PickaxeTabBarState();
}

class _PickaxeTabBarState extends State<PickaxeTabBar> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: PickaxeColors.border),
        color: PickaxeColors.surface,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(widget.tabs.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onTabSelected?.call(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected
                    ? PickaxeColors.primary
                    : PickaxeColors.surface,
                border: Border.all(
                    color: isSelected
                        ? PickaxeColors.accent
                        : PickaxeColors.border,
                    width: isSelected ? 2 : 1),
              ),
              child: Text(
                widget.tabs[index],
                style: TextStyle(
                  fontFamily: 'Minecraft',
                  fontWeight: FontWeight.bold,
                  color: isSelected
                      ? Colors.black
                      : PickaxeColors.text.withOpacity(0.8),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}


