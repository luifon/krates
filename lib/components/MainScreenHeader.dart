import 'package:flutter/material.dart';

class MainScreenHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 72.0, 32.0, 24.0),
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
}
