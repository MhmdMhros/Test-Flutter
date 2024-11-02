import 'package:flutter/material.dart';

class BuildSelectableText extends StatefulWidget {
  final String text;
  final int index;
  const BuildSelectableText(
      {super.key, required this.text, required this.index});

  @override
  State<BuildSelectableText> createState() => _BuildSelectableTextState();
}

class _BuildSelectableTextState extends State<BuildSelectableText> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == widget.index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = widget.index; // Update selected index on tap
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          // Underline when selected
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2,
              width: 75,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}
