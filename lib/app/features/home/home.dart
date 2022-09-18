import 'package:hbosoftware/app/features/home/presentation/view/home_desktop.dart';
import 'package:hbosoftware/core/responsive/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HboResp(
      desktop: HomeDesktop(),
      mobile: HomeDesktop(),
      tablet: HomeDesktop(),
    );
  }
}
