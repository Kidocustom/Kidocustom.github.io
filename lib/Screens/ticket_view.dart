import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:advanced_project/Screens/widgets/layout_builder_widget.dart';
import 'package:advanced_project/Screens/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketScreen;
  final bool? isColor;
  const TicketView({Key? key, required this.ticketScreen, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(168),
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // the blue ticket area
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketScreen['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilderWidget(sections: 6)),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticketScreen['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketScreen['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticketScreen['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketScreen['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // the dotted section of the ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == Null
                                                ? Colors.white
                                                : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  )
                ],
              ),
            ),
            // the bottom part of the Orange card
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          //ISCOLOR BOOL CAN BE USED FOR ANY BOOLEAN EFFECT
                          AppLayout.getHeight(isColor == null ? 21 : 0)),
                      bottomRight: Radius.circular(
                          AppLayout.getHeight(isColor == null ? 21 : 0)))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticketScreen['date'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text("Date",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticketScreen['departure_time'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text("Departure Time",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticketScreen['number'].toString(),
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text("Number",
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
