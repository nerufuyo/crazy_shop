import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class WishlistCardWidget extends StatelessWidget {
  const WishlistCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: grayColor, spreadRadius: .25, blurRadius: 5)
          ],
          color: whiteColor,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/7/23/eacc635d-1504-4dc8-ae65-09579f5fd971.jpg',
                  width: 140,
                  height: 140),
              const ContentGap10H(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PC Core I3 Paket Lengkap',
                    style: smallBlack,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const ContentGap5V(),
                  Text('Rp 2.500.500', style: mediumBlack),
                  const ContentGap5V(),
                  Row(
                    children: [
                      Icon(
                        EvaIcons.checkmarkCircle2Outline,
                        color: Colors.purple.shade800,
                        size: 20,
                      ),
                      const ContentGap5(),
                      Text('Bandung', style: mediumGray)
                    ],
                  ),
                  const ContentGap5V(),
                  Row(
                    children: const [
                      Icon(
                        EvaIcons.starOutline,
                        color: Colors.yellow,
                      ),
                      Text('4.0'),
                      Text(' | '),
                      Text('1000+ Terjual')
                    ],
                  )
                ],
              )
            ],
          ),
          const ContentGap20(),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: grayColor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    EvaIcons.trash2Outline,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ),
              const ContentGap5(),
              InkWell(
                onTap: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.725,
                    decoration: BoxDecoration(
                      border: Border.all(color: greenColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text(
                        '+ Keranjang',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: greenColor,
                        ),
                      ),
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
