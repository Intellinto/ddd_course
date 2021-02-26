import 'package:flutter/material.dart';

class UncompletedSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {},
        child: Icon(
          Icons.check_box_outline_blank,
        ),
      ),
    );
  }
}
