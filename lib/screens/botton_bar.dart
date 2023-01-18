import 'package:booking/screens/account_screen.dart';
import 'package:booking/screens/home_screen.dart';
import 'package:booking/screens/search_screen.dart';
import 'package:booking/screens/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({Key? key}) : super(key: key);

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int _selectIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const AccountScreen(),
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _itemTapped,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.blueGrey),
        unselectedItemColor: const Color(0xFF526488),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
              label: 'home',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            label: 'search',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: 'ticket',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            label: 'person',
            activeIcon:
                Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
          ),
        ],
      ),
    );
  }
}
