import 'package:flutter/material.dart';
import 'package:saarthi/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  double height;
  final VoidCallback onPress;

  ResponsiveButton(
      {this.isResponsive = false,
      this.width,
      this.height = 60,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppColor.mainButtoncolor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.next_plan)],
        ),
      ),
    );
  }
}
