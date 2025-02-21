import 'package:flutter/material.dart';

class EmoticonFace extends StatefulWidget {
  final String emoticonFace;
  const EmoticonFace({super.key,
    required this.emoticonFace,});

  @override
  State<EmoticonFace> createState() => _EmoticonFaceState();
}

class _EmoticonFaceState extends State<EmoticonFace> {
   Color? _emoticonColor = Colors.blue[600];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_emoticonColor == Colors.blue[600]) {
            _emoticonColor = Colors.white;
          } else {
            _emoticonColor = Colors.blue[600];
          }
          }
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: _emoticonColor,
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Text(
              widget.emoticonFace,
              style: TextStyle(
                fontSize: 28.0,
              ),
            )
        ),
      ),
    );
  }
}
