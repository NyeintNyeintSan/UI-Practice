import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/SaveImageDemoSqlite.dart';
import 'package:ui_practice/local/app_db.dart';
import 'package:ui_practice/local/dao/user_dao.dart';
import 'package:ui_practice/scaffold_page.dart';
import 'package:ui_practice/ui.dart';
import 'package:ui_practice/ui/first_page.dart';
import 'package:ui_practice/ui_inspiration.dart';

void main() {
  Stetho.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appDatabase=AppDb();
    return MultiProvider(
      providers: [
        Provider<UserDao>(
          create: (_)=> appDatabase.userDao,
        )
      ],
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blueAccent
        ),
        home: FirstPage(),
//      home:SaveImageDemoSQLite()
      ),
    );
  }
}
