import 'package:dessert_and_more/app/features/home/presentation/widgets/carousel/hbo_carousel.dart';
import 'package:dessert_and_more/app/features/home/presentation/widgets/stories/hbo_story.dart';
import 'package:dessert_and_more/config/hbo_provider.dart';
import 'package:dessert_and_more/core/ui/hbo_spacer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final appProvider = Provider.of<HboProvider>(context);

    return Padding(
      padding: Space.all(3),
      child: Column(children: const [
        HboStory(isHorizontal: true, title: "lorem ipsum"),
        HboCarousel()
      ]),
    );
  }
}
