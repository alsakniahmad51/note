import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/Widgets/CustomTextField.dart';
import 'package:notes_app/views/Widgets/Custom_App_Bar.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomAppBar(
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subtitle = subTitle ?? widget.note.subtitle;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchNotes();
                    Navigator.pop(context);
                  },
                  title: 'Edite Note',
                  icone: Icons.check),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  hint: widget.note.title),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onChanged: (value) {
                  subTitle = value;
                },
                hint: widget.note.subtitle,
                maxLines: 5,
              ),
            ],
          )),
    );
  }
}
