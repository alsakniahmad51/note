import 'package:flutter/material.dart';
import 'package:notes_app/views/Notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Notesview(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}