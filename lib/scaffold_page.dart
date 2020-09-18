import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Widget"),
      ),
      body: Text("This is body"),
      drawer: Drawer(
        child: Text("Drawer"),
      ),
      endDrawer: Drawer(
        child: Text("End Drawer"),
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.slideshow),
//        onPressed: _showModalSheet
//      ),
    floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child:Text("Modal Sheet",textAlign: TextAlign.center,),
          onPressed: _showModalSheet,
        ),
        Builder(
          builder: (context)=>

            FloatingActionButton(
              child: Text("Snack Bar",textAlign: TextAlign.center,),
              onPressed: (){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("This is snackbar")));
//          _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new SnackBar(content: new Text("This is snackBar"))));
              },
            ),
//          ),
        ),
//        FloatingActionButton(
//          child: Text("Snack Bar",textAlign: TextAlign.center,),
//          onPressed: (){
//            Scaffold.of(context).showSnackBar(SnackBar(content: Text("This is snackbar")));
////          _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new SnackBar(content: new Text("This is snackBar"))));
//          },
//        )
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Person")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            title: Text("Folder")
          ),

        ],
      ),
    );
  }

  void _showModalSheet(){
    showModalBottomSheet(context: context, builder: (builder){
      return Container(
        child: Text("This is show ModalBottomSheet"),
        decoration: BoxDecoration(

          color: Colors.blueAccent,
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
        ),
      );
    });
  }
}
