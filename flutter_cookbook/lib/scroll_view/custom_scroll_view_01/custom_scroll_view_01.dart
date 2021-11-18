import 'package:flutter/material.dart';

import 'package:flutter_cookbook/scroll_view/custom_scroll_view_01/my_label_between_slivers.dart';
import 'package:flutter_cookbook/scroll_view/custom_scroll_view_01/my_sliver_app_bar.dart';
import 'package:flutter_cookbook/scroll_view/custom_scroll_view_01/my_sliver_fixed_extent_list.dart';
import 'package:flutter_cookbook/scroll_view/custom_scroll_view_01/my_sliver_grid.dart';

class CustomScrollView01 extends StatefulWidget {
  const CustomScrollView01({Key? key}) : super(key: key);

  @override
  _CustomScrollView01State createState() => _CustomScrollView01State();
}

class _CustomScrollView01State extends State<CustomScrollView01> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            MySliverAppBar(),
            MySliverFixedExtentList(),
            MyLabel(),
            MySliverGrid(),
          ],
        ),
      ),
    );
  }
}
