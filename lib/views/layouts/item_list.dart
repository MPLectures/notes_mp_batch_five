import 'package:flutter/material.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class ListItem extends StatelessWidget {
  String title;
  String data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      leading: CircleAvatar(
        radius: 20.sp,
        backgroundColor: NotesColor.caColor,
        backgroundImage: AssetImage("assets/images/Illustration.png"),
      ),
      title: Text(title),
      subtitle: Text(data),
      // trailing: Text("07:30 am"),
    );
  }

  ListItem({
    required this.title,
    required this.data,
  });
}
