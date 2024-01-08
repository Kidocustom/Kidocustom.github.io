import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:advanced_project/Screens/widgets/column_layouts.dart';
import 'package:advanced_project/Screens/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: AppLayout.getWidth(86),
                  height: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(10),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/images/img_1.png"))),
                ),
                SizedBox(
                  width: AppLayout.getWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(2),
                    ),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(8),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(3),
                          vertical: AppLayout.getHeight(3)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(100)),
                          color: Color(0xFFFEF4F3)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF526799)),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: AppLayout.getWidth(5),
                          ),
                          Text(
                            'Premium Status',
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: AppLayout.getHeight(5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print("You are tapped");
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(8),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: AppLayout.getHeight(8),
            ),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Styles.primaryColor),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD3))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(12),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("You have 95 flights in a year",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            Text(
              "Accumulated Miles",
              style: Styles.headLineStyle2,
            ),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Styles.bgColor,
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5,
                        color: Colors.grey.shade200,
                        blurRadius: 5,
                      ),
                    ]),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(children: [
                  SizedBox(
                    height: AppLayout.getHeight(15),
                  ),
                  Text(
                    "192802",
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                  ),
                  Row(
                    children: [
                      Text(
                        "Miles Accrued",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "23rd May 2021",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(4),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(4),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ColumnLayout(
                          firstText: "23 042",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start),
                      const Spacer(),
                      const ColumnLayout(
                          firstText: "Airline CO",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end),
                      SizedBox(
                        height: AppLayout.getHeight(12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(12),
                  ),
                  AppLayoutBuilderWidget(sections: 12, isColor: false),
                  SizedBox(
                    height: AppLayout.getHeight(12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ColumnLayout(
                          firstText: "24",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start),
                      const Spacer(),
                      const ColumnLayout(
                          firstText: "McDonal's",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end),
                      SizedBox(
                        height: AppLayout.getHeight(12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(12),
                  ),
                  AppLayoutBuilderWidget(sections: 12, isColor: false),
                  SizedBox(
                    height: AppLayout.getHeight(12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ColumnLayout(
                          firstText: "52 340",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start),
                      const Spacer(),
                      const ColumnLayout(
                          firstText: "Exumal",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end),
                      SizedBox(
                        height: AppLayout.getHeight(12),
                      ),
                    ],
                  ),
                ])),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            Center(
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            )
          ]),
    );
  }
}
