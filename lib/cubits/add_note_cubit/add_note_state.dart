part of 'add_note_cubit.dart';

@immutable

abstract class AddNoteState {} // parent class 

class AddNoteInitial extends AddNoteState{}

class AddNoteLoading extends AddNoteState{}

class AddNoteSuccess extends AddNoteState{}

class AddNoteFailure extends AddNoteState
{
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}

