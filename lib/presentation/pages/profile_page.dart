import 'package:crazy_shop/common/constant.dart';
import 'package:crazy_shop/common/custom_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text('My Account', style: bigBlack),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/default_profile.jpg',
                  width: 80,
                  height: 80,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Listyo Adi', style: bigBlack),
                    Text('082240222798', style: smallBlack),
                    Text('nerufuyo@gmail.com', style: smallBlack)
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(EvaIcons.editOutline, size: 32))
            ],
          ),
          const ContentGap20(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Activity', style: bigBlack),
              const ContentGap10(),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: grayColor, spreadRadius: .5, blurRadius: 8)
                  ],
                  color: whiteColor,
                ),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(EvaIcons.heartOutline,
                                    size: 32, color: greenColor)),
                            const Text('Wishlist')
                          ],
                        ),
                        const SeparatorVerticalBox(),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(EvaIcons.creditCardOutline,
                                    size: 32, color: greenColor)),
                            const Text('Transaction')
                          ],
                        ),
                        const SeparatorVerticalBox(),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(EvaIcons.cubeOutline,
                                    size: 32, color: greenColor)),
                            const Text('Feed')
                          ],
                        ),
                      ]),
                ),
              )
            ],
          ),
          const ContentGap20(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Account Settings', style: bigBlack),
              const ContentGap10(),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  const Icon(EvaIcons.mapOutline, size: 28, color: blackColor),
                  const ContentGap5(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Address List', style: mediumBlack),
                      Text('Settings address for shopping', style: smallBlack)
                    ],
                  )
                ]),
              ),
              const ContentGap10(),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  const Icon(EvaIcons.smartphoneOutline,
                      size: 28, color: blackColor),
                  const ContentGap5(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment', style: mediumBlack),
                      Text('E-Wallet, credit & debit card', style: smallBlack)
                    ],
                  )
                ]),
              ),
              const ContentGap10(),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  const Icon(EvaIcons.lockOutline, size: 28, color: blackColor),
                  const ContentGap5(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account Security', style: mediumBlack),
                      Text('Password, PIN and personal data verification',
                          style: smallBlack)
                    ],
                  )
                ]),
              ),
              const ContentGap10(),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  const Icon(EvaIcons.bellOutline, size: 28, color: blackColor),
                  const ContentGap5(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Notification', style: mediumBlack),
                      Text('Settings all notification', style: smallBlack)
                    ],
                  )
                ]),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
