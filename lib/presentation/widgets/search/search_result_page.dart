import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/pages/profile_page.dart';
import 'package:crazy_shop/presentation/pages/search_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});
  static const routeName = '/search-result';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: whiteColor,
          leadingWidth: 28,
          title: SizedBox(
            height: 36,
            child: TextField(
              autofocus: false,
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
              onTap: () {
                Navigator.pushNamed(context, SearchPage.routeName);
              },
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
          bottom: TabBar(
            labelColor: greenColor,
            labelStyle: mediumBlack,
            unselectedLabelColor: grayColor,
            indicatorColor: greenColor,
            tabs: const [
              Tab(text: 'Product'),
              Tab(text: 'Mart'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Product', style: bigBlack),
            ),
            Center(
              child: Text('Mart', style: bigBlack),
            )
          ],
        ),
      ),
    );
  }
}
