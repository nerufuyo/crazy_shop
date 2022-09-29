import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/widgets/feed/all_tab_widget.dart';
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
            toolbarHeight: 0,
            bottom: const TabBar(
              isScrollable: true,
              unselectedLabelColor: grayColor,
              labelColor: greenColor,
              indicatorColor: greenColor,
              tabs: [
                Tab(
                  icon: Icon(EvaIcons.shoppingBag, size: 32),
                  text: 'All',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.monitorOutline, size: 32),
                  text: 'Electronics',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.pricetagsOutline, size: 32),
                  text: 'Fashion',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.globe2Outline, size: 32),
                  text: 'Hobbies',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.smartphoneOutline, size: 32),
                  text: 'Gadgets',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.brushOutline, size: 32),
                  text: 'Cosmetics',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.colorPaletteOutline, size: 32),
                  text: 'Arts',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.thermometerOutline, size: 32),
                  text: 'Healty',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.smilingFaceOutline, size: 32),
                  text: 'Baby',
                  iconMargin: EdgeInsets.all(2),
                ),
                Tab(
                  icon: Icon(EvaIcons.trendingUpOutline, size: 32),
                  text: 'Finance',
                  iconMargin: EdgeInsets.all(2),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
              FeedAllTabWidget(),
            ],
          )),
    );
  }
}
