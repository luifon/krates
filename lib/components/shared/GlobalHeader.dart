import 'package:flutter/material.dart';
import 'package:krates/custom-style/CustomColors.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(primaryColor),
      padding: const EdgeInsets.fromLTRB(32.0, 70.0, 32.0, 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hello, John",
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
