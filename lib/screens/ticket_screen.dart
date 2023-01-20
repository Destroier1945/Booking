import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/column_layout.dart';
import 'package:booking/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getWith(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
                color: Colors.white,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: 'Flutter JK',
                        secondText: 'Passenger',
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: '5221 32567814',
                        secondText: 'Passport',
                      ),
                    ],
                  )
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
