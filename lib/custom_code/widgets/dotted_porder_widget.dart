// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dotted_border/dotted_border.dart';

class DottedPorderWidget extends StatefulWidget {
  const DottedPorderWidget({
    Key? key,
    this.width,
    this.height,
    required this.strokWidth,
    required this.strokColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double strokWidth;
  final Color strokColor;

  @override
  _DottedPorderWidgetState createState() => _DottedPorderWidgetState();
}

class _DottedPorderWidgetState extends State<DottedPorderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: DottedBorder(
        color: Colors.black,
        strokeWidth: widget.strokWidth,
        child: FlutterLogo(size: 0),
      ),
    );
  }
}
