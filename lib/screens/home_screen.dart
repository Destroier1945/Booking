import 'package:booking/screens/hotel_screen.dart';
import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good Morning', style: Styles.headLineStyle3),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle2,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/img_1.png'),
                            )),
                      ),
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          'Search',
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  const AppDoubletext(
                    bigText: 'Upcoming flights',
                    smallText: 'View all',
                  )
                ],
              ),
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const AppDoubletext(
                bigText: 'Hotels',
                smallText: 'View all',
              )),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
