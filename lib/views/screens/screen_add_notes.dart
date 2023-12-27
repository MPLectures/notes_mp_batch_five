import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/widgets/buttons.dart';
import 'package:notes_mp_batch_five/widgets/text_field.dart';
import 'package:sizer/sizer.dart';

class ScreenAddNotes extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Add Notes",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: "Poppins",
                        fontSize: 20.sp,
                      ),
                    ),
                  ).paddingOnly(top: 20.sp, bottom: 5.h),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: "Poppins",
                    ),
                  ).paddingOnly(bottom: 5.sp),
                  NotesTextField(
                    hintText: "Muhammad Ali Hassan Sheikh",
                    fontSize: 11.sp,
                    isFilled: true,
                    suffixIcon: Icons.cancel_outlined,
                    controller: _titleController,
                    onIconTap: () {
                      _titleController.clear();
                    },
                  ),
                  Text(
                    "Write your data here",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: "Poppins",
                    ),
                  ).paddingSymmetric(vertical: 5.sp),
                  SizedBox(
                    height: 30.h,
                    child: NotesTextField(
                      controller: _dataController,
                      hintText:
                          "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                      fontSize: 11.sp,
                      isFilled: true,
                      maxLines: 15,
                    ),
                  ),
                ],
              ),
            ),
            NotesButton(
              buttonColor: NotesColor.appColor,
              text: "Save",
              isDoubleIcon: false,
              borderRadius: 10,
              onButtonTap: () {},
            ).paddingOnly(bottom: 30.sp),
          ],
        ).paddingSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
