import 'package:crazy_shop/common/custom_style.dart';
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
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
          ),
        ),
      ),
      body: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          EvaIcons.backspace,
          color: blackColor,
        ),
      ),
    );
  }
}
