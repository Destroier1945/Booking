import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  //Airline tickets
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(40))),
                        color: const Color(0xFFF4F6FD)),
                    child: Center(
                      child: Text('Airline tickets'),
                    ),
                  ),
                  //Hotels
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(40))),
                        color: const Color(0xFFF4F6FD)),
                    child: Center(
                      child: Text('Hotels'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),

          //Search departure
          AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(15)),
          AppIconText(
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
              color: Color(0xD91130CE),
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
          AppDoubletext(
            bigText: 'Upcoming flights',
            smallText: 'View all',
          ),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
