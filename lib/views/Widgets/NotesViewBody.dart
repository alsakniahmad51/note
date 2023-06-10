import 'package:flutter/material.dart';

import 'Custom_App_Bar.dart';
import 'Custom_Note_Item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
