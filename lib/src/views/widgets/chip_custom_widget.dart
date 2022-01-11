import 'package:flutter/material.dart';

class ChipCustomWidget extends StatelessWidget {
  final String label;
  final bool isActivy;



  const ChipCustomWidget(
      {Key? key,
      required this.label,
      this.isActivy = false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: isActivy ? Colors.black : Colors.white),
        ),
        backgroundColor: isActivy ? Colors.white : const Color(0xFF303134),
      ),
    );
  }
}
