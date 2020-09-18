import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:ui_practice/local/dao/user_dao.dart';
import 'package:ui_practice/local/model/user_table.dart';

part 'app_db.g.dart';

@UseMoor(tables:[Users],daos:[UserDao])

class AppDb extends _$AppDb{
  AppDb():super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlie',logStatements: true));
  @override
  int get schemaVersion => 1;

  Stream<List<User>>watchUsers()=>select(users).watch();
  Future<List<User>>getAllUsers()=>select(users).get();
  Future insertUser (Insertable<User>user)=>into(users).insert(user);
  Future updateUser(Insertable<User> user) =>update(users).replace(user);


}