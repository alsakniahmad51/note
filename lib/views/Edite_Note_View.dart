import 'package:flutter/material.dart';

import 'Widgets/Edite_Note_View_Body.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditeNoteViewBody(),
    );
  }
}
