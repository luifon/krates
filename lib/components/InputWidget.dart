import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final bool _multiLine;

  InputWidget(this._controller, this._label, this._hint, this._multiLine);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        maxLines: this._multiLine ? null : 1,
        keyboardType:
        this._multiLine ? TextInputType.multiline : TextInputType.text,
        decoration: InputDecoration(labelText: _label, hintText: _hint),
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }
}
