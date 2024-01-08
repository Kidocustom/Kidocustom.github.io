import 'package:advanced_project/Screens/utils/app_layout.dart';
import 'package:advanced_project/Screens/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //optioinal (how to prove that it works)
    print("Hotel price is ${hotel['price']}");
    final Size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: Size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          SizedBox(
            height: AppLayout.getHeight(10),
          ),
          Text(hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.KakiColor)),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
          Text('\$${hotel["price"]}/night',
              style: Styles.headLineStyle1.copyWith(color: Styles.KakiColor)),
        ],
      ),
    );
  }
}
