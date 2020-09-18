import 'package:moor/moor.dart';

class Users extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1,max: 255)();
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  TextColumn get address => text().withLength(min: 10,max: 255)();
  TextColumn get phone => text().withLength(min:5,max: 12)();
  BoolColumn get gender => boolean().nullable()();
  TextColumn get job => text().withLength(min: 3,max: 255)();

  TextColumn get hairColor=> text().withLength()();
  TextColumn get profilePicture=> text().withLength()();
//  BlobColumn get profilePicture=> blob().nullable()();

  TextColumn get height => text().withLength()();
  TextColumn get weight => text().withLength()();
  TextColumn get skinColor => text().withLength()();

//  TextColumn get country=> text().withLength()();
//  TextColumn

  @override
  Set<Column> get PrimaryKey=> {id};


}