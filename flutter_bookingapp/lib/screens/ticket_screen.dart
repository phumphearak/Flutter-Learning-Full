import 'package:flutter/material.dart';
import 'package:flutter_bookingapp/screens/ticket_view.dart';
import 'package:flutter_bookingapp/utils/app_info_list.dart';
import 'package:flutter_bookingapp/utils/app_layout.dart';
import 'package:flutter_bookingapp/utils/app_style.dart';
import 'package:flutter_bookingapp/widgets/column_layout.dart';
import 'package:flutter_bookingapp/widgets/layout_builder.dart';
import 'package:flutter_bookingapp/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  //final Map<String, dynamic> ticket;
  //final bool? isColor;
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              const Gap(20),
              const AppTicketTaps(firstTab: "Upciming", secondTab: "Privius"),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                width: size.width * 0.85,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumLayout(
                          firstText: " 5334 344544",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumLayout(
                          firstText: "37585 84758377",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumLayout(
                          firstText: " B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const Gap(15),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2345",
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment methods",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumLayout(
                          firstText: "\$245.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //
              // The bar code for paymnet
              //
              //const Gap(5),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://',
                      drawText: false,
                      color: Colors.grey.shade700,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: TicketView(
                  ticket: ticketList[0],
                  //isColor: true,
                ),
              ),
            ],
          ),
          Positioned(
            left: 19,
            top: 350,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 19,
            top: 350,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
