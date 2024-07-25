import 'package:flutter/material.dart';
import 'package:flutter_bookingapp/utils/app_layout.dart';
import 'package:flutter_bookingapp/utils/app_style.dart';
import 'package:gap/gap.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelsScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
          //const Gap(mainAxisExtent)
        ],
      ),
    );
  }
}
