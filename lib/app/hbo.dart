import 'package:hbosoftware/app/landers/body.dart';
import 'package:hbosoftware/app/landers/mobile_drawer.dart';
import 'package:hbosoftware/app/landers/navbar_desktop.dart';
import 'package:hbosoftware/config/hbo_init.dart';
import 'package:hbosoftware/core/responsive/responsive.dart';
import 'package:hbosoftware/core/ui/functions/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Hbo extends StatefulWidget {
  const Hbo({Key? key}) : super(key: key);

  @override
  State<Hbo> createState() => _HboState();
}

class _HboState extends State<Hbo> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !HboResp.isDesktop(context) ? const MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const Body(),
    
          ],
        ),
      ),
    );
  }
}
