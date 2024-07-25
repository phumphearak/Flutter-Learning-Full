import 'package:flutter/material.dart';
import 'package:flutter_bookingapp/utils/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle3),
        InkWell(
          onTap: () {
            print('You are tapped');
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
