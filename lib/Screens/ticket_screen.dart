import 'package:advanced_project/Screens/ticket_view.dart';
import 'package:advanced_project/Screens/utils/app_info_list.dart';
import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:advanced_project/Screens/widgets/column_layouts.dart';
import 'package:advanced_project/Screens/widgets/layout_builder_widget.dart';
import 'package:advanced_project/Screens/widgets/ticket_tabs.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                SizedBox(
                  height: AppLayout.getHeight(40),
                ),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                SizedBox(
                  height: AppLayout.getHeight(40),
                ),
                TicketView(ticketScreen: ticketList[0], isColor: true),
                SizedBox(
                  height: AppLayout.getHeight(1),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                          bottomRight:
                              Radius.circular(AppLayout.getHeight(21)))),
                  padding: EdgeInsets.only(
                      left: AppLayout.getHeight(10),
                      right: AppLayout.getHeight(30),
                      top: AppLayout.getHeight(10),
                      bottom: AppLayout.getHeight(10)),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                          ),
                          ColumnLayout(
                            firstText: '2511 3E65856',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnLayout(
                            firstText: '125563 457857',
                            secondText: 'Number of E- Ticket',
                            alignment: CrossAxisAlignment.start,
                          ),
                          ColumnLayout(
                            firstText: 'B628747',
                            secondText: 'Booking Code',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    //THE FUNCTION REGULATES THE SIZE OF THE ASSET
                                    scale: 11,
                                  ),
                                  Text(
                                    "*** 2462",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(5),
                              ),
                              Text(
                                "Payment Method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const ColumnLayout(
                            firstText: '\$234.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(40),
                ),
                TicketView(
                  ticketScreen: ticketList[0],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: AppLayout.getHeight(11),
              child: Container(
                width: 17,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black)),
                child: CircleAvatar(
                    backgroundColor: Styles.textColor, maxRadius: 4),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              right: AppLayout.getHeight(11),
              child: Container(
                width: 17,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black)),
                child: CircleAvatar(
                    backgroundColor: Styles.textColor, maxRadius: 4),
              ),
            )
          ],
        ));
  }
}
