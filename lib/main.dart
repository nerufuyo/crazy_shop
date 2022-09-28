import 'package:crazy_shop/common/custom_style.dart';
import 'package:crazy_shop/presentation/pages/feed_page.dart';
import 'package:crazy_shop/presentation/pages/main_page.dart';
import 'package:crazy_shop/presentation/pages/profile_page.dart';
import 'package:crazy_shop/presentation/pages/search_page.dart';
import 'package:crazy_shop/presentation/widgets/search/search_result_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crazy Shoop',
      theme: ThemeData.light().copyWith(
          colorScheme: customTheme,
          primaryColor: whiteColor,
          scaffoldBackgroundColor: whiteColor),
      initialRoute: MainPage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case MainPage.routeName:
            return MaterialPageRoute(builder: (_) => const MainPage());
          case SearchPage.routeName:
            return MaterialPageRoute(builder: (_) => const SearchPage());
          case SearchResultPage.routeName:
            return MaterialPageRoute(builder: (_) => const SearchResultPage());
          case FeedPage.routeName:
            return MaterialPageRoute(builder: (_) => const FeedPage());
          case ProfilePage.routeName:
            return MaterialPageRoute(builder: (_) => const ProfilePage());
          default:
            return MaterialPageRoute(builder: (_) => const MainPage());
        }
      },
    );
  }
}
