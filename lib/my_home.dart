import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/local/app_db.dart';
import 'package:ui_practice/local/dao/user_dao.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Photos"),
      ),
      body: _buildAllCustomers(),
//    body: Container(
//      child: Text("Hello"),
//    ),
    );
  }
  FutureBuilder _buildAllCustomers(){
    return FutureBuilder<List<User>>(
      future: Provider.of<UserDao>(context,listen:false).getAllUsers(),
      builder: (context,AsyncSnapshot<List<User>> snapshot){
        if(snapshot.connectionState==ConnectionState.done){
          print("HHHHHHHH ello ");
          print(snapshot.data);
          if(snapshot.hasError){
            return Container(
              child: Center(
                child: Text(snapshot.error.toString()),
              ),
            );
          }
          final customers=snapshot.data;
          return _listCustomers(customers);
        }
        else{
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  ListView _listCustomers(List<User> customers){
    return ListView.builder(
        itemCount: customers.length,
        itemBuilder: (_,index){
          return Card(
            child: Container(
//            child: Image(image: (Image.memory(base64Decode(customers[index].profilePicture))),),
//              child: Image.memory(base64Decode(customers[index].profilePicture)),
//            child: Image(
//              Image.memory(base64Decode(customers[index].profilePicture))
//            ),
//          child: Text((Image.memory(base64Decode(customers[index].profilePicture))).toString()),

            ),
          );
        }
    );
  }
}