import 'package:crazy_shop/common/custom_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
  static const routeName = '/feed';
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            title: const PreferredSize(
              preferredSize: Size.fromHeight(30.0),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: grayColor,
                labelColor: greenColor,
                indicatorColor: greenColor,
                tabs: [
                  Tab(
                    icon: Icon(EvaIcons.shoppingBag, size: 36),
                    text: 'All',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.monitorOutline, size: 36),
                    text: 'Electronics',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.pricetagsOutline, size: 36),
                    text: 'Fashion',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.globe2Outline, size: 36),
                    text: 'Hobbies',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.smartphoneOutline, size: 36),
                    text: 'Gadgets',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.brushOutline, size: 36),
                    text: 'Cosmetics',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.colorPaletteOutline, size: 36),
                    text: 'Arts',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.thermometerOutline, size: 36),
                    text: 'Healty',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.smilingFaceOutline, size: 36),
                    text: 'Baby',
                    iconMargin: EdgeInsets.all(2),
                  ),
                  Tab(
                    icon: Icon(EvaIcons.trendingUpOutline, size: 36),
                    text: 'Finance',
                    iconMargin: EdgeInsets.all(2),
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
              Center(child: Text('Test')),
            ],
          )),
    );
  }
}
