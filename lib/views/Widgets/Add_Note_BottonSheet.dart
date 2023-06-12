import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

import 'CustomTextField.dart';
import 'Custom_Botton.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              MaxLines: 5,
            ),
            SizedBox(
              height: 55,
            ),
            CustomBotton()
          ],
        ),
      ),
    );
  }
}
