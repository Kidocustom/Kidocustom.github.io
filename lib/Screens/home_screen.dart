import 'package:advanced_project/Screens/hotel_screen.dart';
import 'package:advanced_project/Screens/ticket_view.dart';
import 'package:advanced_project/Screens/utils/app_info_list.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:advanced_project/Screens/widgets/double_text_widgets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: AppLayout.getHeight(40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Styles.headLineStyle3),
                      SizedBox(
                        height: AppLayout.getHeight(5),
                      ),
                      Text(
                        "Book Tickets",
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    height: AppLayout.getHeight(50),
                    width: AppLayout.getWidth(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/img_1.png"))),
                  )
                ],
              ),
              SizedBox(
                height: AppLayout.getHeight(25),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(12),
                    vertical: AppLayout.getHeight(12)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD),
                ),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205),
                    ),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(40),
              ),
              const AppDoubleTextWidgets(
                  BigText: 'Upcoming Flights', smallText: "View all")
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
          scrollDirection: Axis.horizontal,
          child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticketScreen: singleTicket))
                  .toList()),
        ),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: AppDoubleTextWidgets(BigText: 'Hotels', smallText: "View all"),
        ),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
          scrollDirection: Axis.horizontal,
          child: Row(
              children:
                  hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList()),
        ),
      ]),
    );
  }
}
