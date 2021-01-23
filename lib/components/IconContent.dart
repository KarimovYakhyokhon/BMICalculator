import 'package:flutter/material.dart';
import 'package:rewrite_bim/Utils/utils.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon( icon,
          size: 110.0,
        color: Colors.white,),
        SizedBox(height: 10.0,),
        Text(label,
          style: IconTextStyle)
      ],
    );
  }
}