import 'package:flutter/material.dart';
import 'package:hbosoftware/app/features/home/presentation/widgets/carousel/hbo_carousel.dart';
import 'package:hbosoftware/app/features/home/presentation/widgets/stories/hbo_story.dart';
import 'package:hbosoftware/config/hbo_provider.dart';
import 'package:hbosoftware/core/ui/hbo_spacer.dart';
import 'package:provider/provider.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final appProvider = Provider.of<HboProvider>(context);

    return Padding(
      padding: Space.h2!,
      child: Column(children: const [
        HboStory(isHorizontal: true, title: "lorem ipsum"),
        HboCarousel()
      ]),
    );
  }
}
