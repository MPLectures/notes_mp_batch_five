import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/views/screens/screen_on_boarding.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: ScreenOnBoarding(),
          // home: ObservableVariableScreen(),
        );
      },
    );
  }
}
