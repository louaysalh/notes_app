import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color =  const Color(0xffAC3931);

  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);  // must specify type of notesBox <NoteModel>
      await notesBox.add(note);
    }
       catch (e) {
      emit(AddNoteFailure(errMessage: (e.toString())));
    }
  }
}
