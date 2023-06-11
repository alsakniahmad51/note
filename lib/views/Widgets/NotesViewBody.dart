import 'package:flutter/material.dart';

import 'Custom_App_Bar.dart';
import 'Custom_Note_Item.dart';
import 'Notes_List_View.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
