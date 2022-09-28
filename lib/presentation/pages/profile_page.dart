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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
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
          ),
          const ContentGap30(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: grayColor, spreadRadius: .5, blurRadius: 8)
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/default_badge.png',
                          width: 60, height: 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gold Member Pass', style: mediumBlack),
                          Text('Get a lot of benefits from members',
                              style: smallBlack),
                        ],
                      ),
                      const Icon(EvaIcons.arrowIosForwardOutline)
                    ]),
              ),
            ),
          ),
          const ContentGap30(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Activity', style: bigBlack),
                const ContentGap20(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: grayColor, spreadRadius: .5, blurRadius: 8)
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
          ),
          const ContentGap30(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Account Settings', style: bigBlack),
                const ContentGap20(),
                InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.mapOutline,
                        size: 28, color: blackColor),
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
                const ContentGap20(),
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
                const ContentGap20(),
                InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.lockOutline,
                        size: 28, color: blackColor),
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
                const ContentGap20(),
                InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.bellOutline,
                        size: 28, color: blackColor),
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
            ),
          ),
          const ContentGap30(),
          ExpansionTile(
            title: Text('Application Settings', style: bigBlack),
            tilePadding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const ContentGap20(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.clipboardOutline,
                        color: blackColor, size: 28),
                    const ContentGap5(),
                    Text('Terms and Conditions', style: mediumBlack)
                  ]),
                ),
              ),
              const ContentGap20(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.shieldOutline,
                        color: blackColor, size: 28),
                    const ContentGap5(),
                    Text('Privacy Policy', style: mediumBlack)
                  ]),
                ),
              ),
              const ContentGap20(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.bulbOutline,
                        color: blackColor, size: 28),
                    const ContentGap5(),
                    Text('Intellectual Property Rights', style: mediumBlack)
                  ]),
                ),
              ),
              const ContentGap20(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Row(children: [
                    const Icon(EvaIcons.starOutline,
                        color: blackColor, size: 28),
                    const ContentGap5(),
                    Text('Review This App', style: mediumBlack)
                  ]),
                ),
              ),
              const ContentGap20(),
            ],
          ),
          const ContentGap30(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(EvaIcons.logOutOutline,
                      color: blackColor, size: 28),
                  const ContentGap5(),
                  Text('Log Out', style: mediumBlack)
                ],
              ),
            ),
          ),
          const ContentGap30(),
        ]),
      ),
    );
  }
}
