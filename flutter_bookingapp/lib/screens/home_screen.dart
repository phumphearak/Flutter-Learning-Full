import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookingapp/screens/hotels_screen.dart';
import 'package:flutter_bookingapp/screens/ticket_view.dart';
import 'package:flutter_bookingapp/utils/app_info_list.dart';
import 'package:flutter_bookingapp/utils/app_style.dart';
import 'package:flutter_bookingapp/widgets/double_text_wedget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good morning',
                              style: Styles.headLineStyle3,
                            ),
                            const Gap(5),
                            Text(
                              'Book Ticket',
                              style: Styles.headLineStyle1,
                            ),
                          ]),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/images/logo.png',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFF8FC205),
                        ),
                        Text(
                          'Search',
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  const AppDoubleText(
                      bigText: "Upcoming Flights", smallText: "View all"),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(ticket: singleTicket))
                    .toList(),
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  const AppDoubleText(bigText: "Hotels", smallText: "View all"),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList
                    .map((singleHotel) => HotelsScreen(hotel: singleHotel))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
