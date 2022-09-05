import 'package:dessert_and_more/app/features/home/presentation/view/home_desktop.dart';
import 'package:dessert_and_more/app/features/home/presentation/view/home_mobile.dart';
import 'package:dessert_and_more/app/features/home/presentation/view/home_tablet.dart';
import 'package:dessert_and_more/core/responsive/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HboResp(
      desktop: HomeDesktop(),
      mobile: HomeMobile(),
      tablet: HomeTablet(),
    );
  }
}
