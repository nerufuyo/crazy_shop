import 'package:carousel_slider/carousel_slider.dart';
import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/widgets/feed/discount_widget.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class FeedAllTabWidget extends StatefulWidget {
  const FeedAllTabWidget({super.key});
  static const routeName = '/feed/all';

  @override
  State<FeedAllTabWidget> createState() => _FeedAllTabWidgetState();
}

class _FeedAllTabWidgetState extends State<FeedAllTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://lelogama.go-jek.com/cache/87/9d/879d70fd36812a344ec0405609dd6452.webp',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const ContentGap10(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Crazy Discount 50% Off',
                      style: Theme.of(context).textTheme.headline6),
                  const ContentGap5V(),
                  Row(
                    children: [
                      Text('Ends in', style: smallBlack),
                      const ContentGap5(),
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: const [
                            Icon(EvaIcons.clockOutline,
                                color: Colors.red, size: 20),
                            ContentGap5(),
                            Text('00:02:14',
                                style: TextStyle(color: Colors.red))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const ContentGap10(),
            const DiscountWidget()
          ],
        ),
      ),
    );
  }
}
