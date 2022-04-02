import 'package:flutter/material.dart';

class TopBarWithIcons extends StatelessWidget {
  const TopBarWithIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.sort,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.radio_button_unchecked,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
