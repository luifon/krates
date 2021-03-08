import 'package:flutter/material.dart';
import 'package:krates/custom-style/CustomColors.dart';

class GlobalHeader extends StatelessWidget implements PreferredSizeWidget {
  final String _text;

  GlobalHeader(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(primaryColor),
      padding: const EdgeInsets.fromLTRB(32.0, 70.0, 32.0, 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _text,
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          Wrap(
            children: [
              Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(100.0);
}
