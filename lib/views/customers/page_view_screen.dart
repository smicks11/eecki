// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/views/customers/Home/index.dart';
import 'package:eecki/views/customers/Search/index.dart';
import 'package:flutter/material.dart';

import 'Messages/index.dart';
import 'Settings/history/history.dart';
import 'Settings/index.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({
    Key key,
  }) : super(key: key);
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen>
    with WidgetsBindingObserver {
  var _selectedPageIndex;
  List<Widget> _pages;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedPageIndex = 0;
    _pages = [CustomerHome(), MessagesScreen(), Search(), HistoryScreen(), SettingScreen() ];
    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                size: 25,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 25,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 25,
              ),
              label: "",
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kWhiteColor,
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: true,
          // showUnselectedLabels: false,
          currentIndex: _selectedPageIndex,
          onTap: (selectedPageIndex) {
            setState(() {
              _selectedPageIndex = selectedPageIndex;
              if (selectedPageIndex == 0 ||
                  selectedPageIndex == 1 ||
                  selectedPageIndex == 2 || selectedPageIndex == 3 || selectedPageIndex == 4) {
                _pageController.jumpToPage(selectedPageIndex);
              }
            });
          },
        ),
      ),
    );
  }
}
