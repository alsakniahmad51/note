import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNtoe(NoteModel newnote) async {
    emit(AddNoteLoading());
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      await NotesBox.add(newnote);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
