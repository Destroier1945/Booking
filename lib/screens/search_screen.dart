// ignore_for_file: prefer_const_constructors

import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWith(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are \nyou looking for?',
            style:
                Styles.headLineStyle.copyWith(fontSize: AppLayout.getWith(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(
            firstTab: 'Airline tickes',
            secondTab: 'hotels',
          ),
          Gap(AppLayout.getHeight(25)),

          //Search departure
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(
            icon: Icons.flight_land_outlined,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWith(18),
                horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWith(10)),
              color: const Color(0xD91130CE),
            ),
            child: Row(
              children: [
                Center(
                  child: Text(
                    'Find tickets',
                    style: Styles.textStyle
                        .copyWith(color: Colors.white, fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubletext(
            bigText: 'Upcoming flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWith(15)),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '20% discount on the early booking of this flight',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWith(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0XFF199999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWith(15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: '😉',
                              style: TextStyle(fontSize: 28),
                            ),
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '😉',
                              style: TextStyle(fontSize: 28),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
