import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../Constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      var notes = NotesBox.values.toList();
      emit(NotesSuccess(notes));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
