import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.red.shade300),
      padding: const EdgeInsets.symmetric(vertical: 26),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CardWidget(),
            ContentGap10H(),
            CardWidget(),
            ContentGap10H(),
            CardWidget(),
            ContentGap10H(),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(children: [
          Image.network(
            'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/7/23/eacc635d-1504-4dc8-ae65-09579f5fd971.jpg',
            width: MediaQuery.of(context).size.width * 0.42,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.42,
            decoration: const BoxDecoration(color: whiteColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp. 20.400', style: mediumBlack),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.red.withOpacity(0.25)),
                      padding: const EdgeInsets.all(4.0),
                      child: const Text(
                        '50%',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const ContentGap5(),
                    const Text(
                      'Rp. 50.000',
                      style: TextStyle(
                          color: grayColor,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12),
                    ),
                  ],
                ),
                const ContentGap5V(),
                Row(
                  children: [
                    Icon(
                      EvaIcons.checkmarkCircle2Outline,
                      color: Colors.purple.shade800,
                    ),
                    const ContentGap5(),
                    Text('Bandung', style: mediumGray)
                  ],
                ),
                const ContentGap40(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.008,
                          decoration: BoxDecoration(
                            color: grayColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.008,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                    const ContentGap5V(),
                    Text('Segera Habis', style: smallBlack)
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
