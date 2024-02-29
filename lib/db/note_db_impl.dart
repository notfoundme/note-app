import 'package:hive/hive.dart';
import 'package:note_app/db/note_db.dart';
import 'package:note_app/models/note_data_model.dart';

class NotesDbImpl implements NotesDb {
  Box<NotesModel> db;

  NotesDbImpl(this.db);

  @override
  Future<bool> createNote(NotesModel notesModel) async {
    int result = await db.add(notesModel);
    return true;
  }

  @override
  Future<bool> deleteNote(NotesModel notesModel) async {
    int currentIndex = -1;
    for (int i = 0; i < db.length; i++) {
      if (db.values.elementAt(i).id == notesModel.id) {
        currentIndex = i;
      }
    }
    await db.deleteAt(currentIndex);
    return true;
  }

  @override
  Future<List<NotesModel>> getAllNotes() async {
    return db.values.toList();
  }

  @override
  Future<bool> updateNote(NotesModel notesModel) async {
    for (int i = 0; i < db.length; i++) {
      if (db.values.elementAt(i).id == notesModel.id) {
        await db.putAt(i, notesModel);
      }
    }
    return true;
  }
}