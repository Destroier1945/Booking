import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/column_layout.dart';
import 'package:booking/widgets/layout_builder_widget.dart';
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
              SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(
                    isColor: true,
                    sections: 15,
                    width: 12,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: '364738 8274478',
                        secondText: 'Number of E-ticket',
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: 'B2SG28',
                        secondText: 'Booking Code',
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(
                    isColor: true,
                    sections: 15,
                    width: 12,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                ' *** 2462',
                                style: Styles.headLineStyle3,
                              ),
                            ],
                          ),
                          const Text('Payment method'),
                        ],
                      ),
                      AppColumnLayout(
                        firstText: '\$249,99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ]),
              ),
              /*
              barcode widget
              */
              const SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    )),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Styles.textColor,
                maxRadius: 4,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Styles.textColor,
                maxRadius: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
