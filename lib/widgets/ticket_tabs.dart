import 'package:booking/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            //Airline tickets
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(40))),
                  color: const Color(0xFFF4F6FD)),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            //Hotels
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(40))),
                  color: const Color(0xFFF4F6FD)),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
