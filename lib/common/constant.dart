import 'package:crazy_shop/common/custom_style.dart';
import 'package:flutter/material.dart';

//  Gap
class ContentGap5 extends StatelessWidget {
  const ContentGap5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 5);
  }
}

class ContentGap10 extends StatelessWidget {
  const ContentGap10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class ContentGap20 extends StatelessWidget {
  const ContentGap20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 20);
  }
}

// Separator
class SeparatorVerticalBox extends StatelessWidget {
  const SeparatorVerticalBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
      width: 2,
      child: ColoredBox(color: grayColor.withOpacity(.5)),
    );
  }
}
