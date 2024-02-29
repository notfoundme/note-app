import 'package:note_app/models/note_data_model.dart';

abstract class NotesDb {
  Future<List<NotesModel>> getAllNotes();
  Future<bool> createNote(NotesModel notesModel);
  Future<bool> updateNote(NotesModel notesModel);
  Future<bool> deleteNote(NotesModel notesModel);
}