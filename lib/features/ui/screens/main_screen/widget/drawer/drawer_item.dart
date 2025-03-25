import 'package:education_app/features/ui/common/widget/custom_list_tile.dart';
import 'package:education_app/features/ui/screens/main_screen/function/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'drawer_item_list.dart';


/// drawer item custom list tile implement

class DrawerItem extends StatelessWidget {
  final int index;
  const DrawerItem({
    super.key, required this.index,

  });

  @override
  Widget build(BuildContext context) {
    final item = drawerItems[index];
    return CustomListTile(
      leadingIcon: item['icon'],
      title: item['text'],
      leadingIconColor:item['color'],
      onTap: () {
        Navigator.pop(context);
        NavigationUtils.onTapHandler(context, drawerItems[index]['text']);
      },
    );
  }
}