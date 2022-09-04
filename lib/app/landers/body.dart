



import 'package:dessert_and_more/core/ui/functions/hbo_scroll.dart';
import 'package:dessert_and_more/utils/widgets/body_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = Provider.of<ScrollProvider>(context);
    return SingleChildScrollView(
      controller: scrollController.controller,
      child: Column(
        children: BodyUtils.views,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
