import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/pages/feed_page.dart';
import 'package:crazy_shop/presentation/pages/profile_page.dart';
import 'package:crazy_shop/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routeName = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  int _selectedIndex = 0;
  static const List _widgetOptions = [
    Text('Index 1: Home Page'),
    FeedPage(),
    Text('Index 3: Inbox Page'),
    Text('Index 4: Whislist Page'),
    Text('Index 5: Transaction Page')
  ];

  void _onItemTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: whiteColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            title: SizedBox(
              height: 36,
              child: TextField(
                autofocus: false,
                onTap: () {
                  Navigator.pushNamed(context, SearchPage.routeName);
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: grayColor.withOpacity(.2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.all(4),
                  hintText: 'Search many things',
                  prefixIcon: const Icon(EvaIcons.searchOutline, size: 20),
                  prefixIconColor: blackColor,
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      EvaIcons.bellOutline,
                      color: blackColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      EvaIcons.shoppingCartOutline,
                      color: blackColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProfilePage.routeName);
                    },
                    icon: const Icon(
                      EvaIcons.menu,
                      color: blackColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            elevation: 20,
            iconSize: 24,
            selectedItemColor: greenColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(EvaIcons.homeOutline), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(EvaIcons.cubeOutline), label: 'Feed'),
              BottomNavigationBarItem(
                  icon: Icon(EvaIcons.inboxOutline), label: 'Inbox'),
              BottomNavigationBarItem(
                  icon: Icon(EvaIcons.heartOutline), label: 'Whistlist'),
              BottomNavigationBarItem(
                  icon: Icon(EvaIcons.creditCardOutline), label: 'Transaction'),
            ],
          ),
        ),
      ),
    );
  }
}
