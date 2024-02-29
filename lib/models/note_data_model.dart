import 'package:hive/hive.dart';
// part 'note_data_model.g.dart';

@HiveType(typeId: 0)
class NotesModel {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? content;

  @HiveField(3)
  DateTime? date;

  NotesModel({
    required this.title,
    required this.id,
    required this.content,
    required this.date,
  });
}
