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

class ContentGap10H extends StatelessWidget {
  const ContentGap10H({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 10);
  }
}

class ContentGap5V extends StatelessWidget {
  const ContentGap5V({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 5);
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

class ContentGap30 extends StatelessWidget {
  const ContentGap30({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 30);
  }
}

class ContentGap40 extends StatelessWidget {
  const ContentGap40({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 40);
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
