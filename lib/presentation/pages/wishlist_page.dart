import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/widgets/wishlist/card_widget.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});
  static const routeName = '/wishlist';

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: const [
          WishlistCardWidget(),
          ContentGap10(),
          WishlistCardWidget(),
          ContentGap10(),
          WishlistCardWidget(),
          ContentGap10(),
          WishlistCardWidget(),
        ]),
      ),
    );
  }
}
