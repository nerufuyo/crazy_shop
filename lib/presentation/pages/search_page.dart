import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/pages/profile_page.dart';
import 'package:crazy_shop/presentation/widgets/search/search_result_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  static const routeName = '/search';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                autofocus: true,
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
                textInputAction: TextInputAction.go,
                onSubmitted: (value) {
                  Navigator.pushNamed(context, SearchResultPage.routeName);
                },
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Recomendation For You', style: mediumBlack),
                  const ContentGap20(),
                ],
              ),
            ),
          )),
    );
  }
}
