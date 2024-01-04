import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ItemDrawer extends StatelessWidget {
  const ItemDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      backgroundColor: Colors.teal,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(),
                Text("Name"),
                Text("email"),
                Text("Contact info"),
              ],
            ),
          ),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Card(child: ListTile()),
          Card(child: ListTile()),
          Card(child: ListTile()),
          Card(child: ListTile()),
        ],
      ),
    ).paddingAll(10.sp);
  }
}
