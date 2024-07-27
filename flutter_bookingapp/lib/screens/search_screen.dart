import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bookingapp/utils/app_layout.dart';
import 'package:flutter_bookingapp/utils/app_style.dart';
import 'package:flutter_bookingapp/widgets/double_text_wedget.dart';
import 'package:flutter_bookingapp/widgets/icon_text_wedget.dart';
import 'package:flutter_bookingapp/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35.0),
          ),
          const AppTicketTaps(
            firstTab: "Airline tickets",
            secondTab: "Hotels",
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(20),
          const AppDoubleText(
              bigText: "Upcoming Flighte", smallText: "View all"),
          const Gap(10),
          Row(
            children: [
              Container(
                width: size.width * .42,
                height: 410,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ]),
                child: Column(children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.png"),
                        )),
                  ),
                  const Gap(10),
                  Text(
                    "20% discounts on the early bookis of this flight, Don't miss",
                    style: Styles.headLineStyle2,
                  ),
                ]),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * 0.43,
                          height: 190,
                          //margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              const Gap(10),
                              Text(
                                "Take the survey about our service and get discount",
                                style: Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 18,
                                  color: const Color(0xFF189999),
                                ),
                                color: Colors.transparent),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    width: size.width * 0.43,
                    height: 210,
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Gap(5),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "hi",
                            ),
                            TextSpan(text: "Happy"),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
