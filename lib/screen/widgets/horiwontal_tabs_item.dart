import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalTabBar extends StatefulWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int) onTabSelected;

  const HorizontalTabBar({
    Key? key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  _HorizontalTabBarState createState() => _HorizontalTabBarState();
}

class _HorizontalTabBarState extends State<HorizontalTabBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.tabs.map((tab) {
          int index = widget.tabs.indexOf(tab);
          bool isSelected = index == widget.selectedIndex;

          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              widget.onTabSelected(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                      width: 2.5,
                    ),
                  ),
                ),
                child: FadeInRight(
                  duration: Duration(milliseconds: widget.selectedIndex * 350),
                  child: Text(
                    tab,
                    style: TextStyle(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
