import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_manadement_app_getx/core/constants.dart';
import 'package:student_manadement_app_getx/model/student.dart';
import 'package:student_manadement_app_getx/view/student_list_screen.dart/student_list_screen.dart';
import 'package:student_manadement_app_getx/view/widgets/text_button.dart';

void showDialogueforDelete(StudentModel student) {
  Get.dialog(Dialog(
    child: Container(
      width: 200,
      height: 250,
      decoration: containerDecoration2.copyWith(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              "Are you sure you to delete ?",
              style: ageandDepTxt,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButtonWidgets(
                  onPressed: () {
                    studentsController
                        .deleteStudent(int.parse(student.id.toString()));
                    Get.back();
                    Get.to(const StudentListScreen());
                  },
                  buttontext: 'OK',
                ),
                setwidth,
                TextButtonWidgets(
                  buttontext: 'Cancel',
                  onPressed: () {
                    Get.back();
                  },
                )
              ],
            ),
          )
        ],
      ),
    ),
  ));
}

// ignore: must_be_immutable
