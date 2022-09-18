import 'package:flutter/cupertino.dart';
import 'package:hbosoftware/core/theme/hbo_dimension.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 330
        : index == 2
            ? 330
            : index == 3
                ? 320
                : index == 4
                    ? 300
                    : index == 5
                        ? 300
                        : 0;
    controller.animateTo(
      HboDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 340
        : index == 2
            ? 280
            : index == 3
                ? 280
                : index == 4
                    ? 270
                    : 300;
    controller.animateTo(
      HboDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
