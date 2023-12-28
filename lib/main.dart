import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/views/screens/screen_on_boarding.dart';
import 'package:sizer/sizer.dart';

import 'practice/pageView.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) => Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: ScreenOnBoarding(),
        // home: ScreenPageView(),
          // home: ObservableVariableScreen(),
        ),
    );
}
