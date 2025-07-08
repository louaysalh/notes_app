import 'package:hive/hive.dart';

part 'note_model.g.dart'; // file name of generate file
@HiveType(typeId: 0) //unique per object not duplicate 
class NoteModel extends HiveObject{ // extend HIveObject is optional
  @HiveField(0) // unique per class can be duplicate in another class
   String title;
  @HiveField(1)
   String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
