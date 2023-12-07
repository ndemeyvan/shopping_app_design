import 'package:flutter/material.dart';

class ThemeModeSwitcher extends StatefulWidget {
  final bool isDarkMode;
  final Function(bool) onChanged;

  const ThemeModeSwitcher({
    Key? key,
    required this.isDarkMode,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ThemeModeSwitcher> createState() => _ThemeModeSwitcherState();
}

class _ThemeModeSwitcherState extends State<ThemeModeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.isDarkMode ? 'Dark' : 'Light',
          style: TextStyle(
            color: widget.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(width: 10.0),
        Switch(
          value: widget.isDarkMode,
          onChanged: widget.onChanged,
          activeColor: Theme.of(context).colorScheme.primary,
          activeTrackColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 10.0),
        Icon(
          widget.isDarkMode ? Icons.wb_sunny : Icons.nightlight,
          color: widget.isDarkMode ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
