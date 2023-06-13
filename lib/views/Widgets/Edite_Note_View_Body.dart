import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/CustomTextField.dart';
import 'package:notes_app/views/Widgets/Custom_App_Bar.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CustomAppBar(title: 'Edite Note', icone: Icons.check),
              SizedBox(
                height: 40,
              ),
              CustomTextField(hint: 'Title'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                MaxLines: 5,
              ),
            ],
          )),
    );
  }
}
