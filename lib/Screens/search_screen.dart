import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:advanced_project/Screens/widgets/double_text_widgets.dart';
import 'package:advanced_project/Screens/widgets/icons_text.dart';
import 'package:advanced_project/Screens/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SeacrhScreen extends StatelessWidget {
  const SeacrhScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            SizedBox(
              height: AppLayout.getHeight(40),
            ),
            Text(
              "What are \n you looking for?",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            const AppIcons(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            const AppIcons(icon: Icons.flight_land_rounded, text: "Arrival"),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(18),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    color: const Color(0xD91130CE)),
                child: Center(
                  child: Text(
                    "Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                )),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            const AppDoubleTextWidgets(
                BigText: 'Upcoming Flights', smallText: "Vew all"),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(
                          15,
                        ),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.grey.shade200)
                      ],
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                    ),
                    height: AppLayout.getHeight(425),
                    width: size.width * 0.42,
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sit.jpg"))),
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(12),
                        ),
                        Text(
                          "20% discount on the early booking of this flight. Dont miss out.",
                          style: Styles.headLineStyle2,
                        )
                      ],
                    )),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getHeight(15)),
                          height: AppLayout.getHeight(200),
                          width: size.width * 0.44,
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount \n for survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(10),
                              ),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: AppLayout.getHeight(-45),
                          top: AppLayout.getHeight(-40),
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xFF189999))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(15),
                    ),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          (Text(
                            "Take love",
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "🥰", style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: "🥰", style: TextStyle(fontSize: 50)),
                            TextSpan(
                                text: "🥰", style: TextStyle(fontSize: 38)),
                          ]))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
