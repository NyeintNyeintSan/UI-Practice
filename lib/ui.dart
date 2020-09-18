import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/local/app_db.dart';
import 'package:ui_practice/local/dao/user_dao.dart';
//import 'package:universal_html/html.dart' hide Text;
import 'dart:io';

import 'package:ui_practice/my_home.dart';

class UI extends StatefulWidget {
  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  Future<File> imageFile;
  File selectedImage;
  String imgString;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
//  final TextEditingController _dobController = TextEditingController(text: null);
  final TextEditingController _dobController = TextEditingController(
      text: new DateTime.now().toString());
  final TextEditingController _phoneController = TextEditingController(text: "09");
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _skinColorController = TextEditingController();
  final TextEditingController _hairColorController = TextEditingController();
  final TextEditingController _profilePictureController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _dobController.dispose();
    _phoneController.dispose();
    _genderController.dispose();
    _jobController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _skinColorController.dispose();
    _hairColorController.dispose();
    _profilePictureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Entry"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextFormField(
                      controller: _nameController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 1 || value.length > 255) {
                          return "Name must be within 1 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your name",
                          labelText: "Student Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _addressController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Address must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your address",
                          labelText: "Student Address",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  FormBuilder(
                    key: _fbKey,
                    initialValue: {
                      'date': DateTime.now(),
                      'accept_terms': false,
                    },
                    autovalidate: true,
                    child:  FormBuilderDateTimePicker(
                      attribute: "date",
                      inputType: InputType.date,
                      format: DateFormat("dd-MM-yyyy"),
                      decoration:
                      InputDecoration(labelText: "Date Of Birth"),
                      onChanged: (value){
                        _dobController.text = value.toString();
                      },
                    ),
                  ),
//                  InkWell(
//                    onTap: ()  {
//                      return FormBuilder(
//                          key: _fbKey,
//                          initialValue: {
//                            'date': DateTime.now(),
//                            'accept_terms': false,
//                          },
//                          autovalidate: true,
//                        child:  FormBuilderDateTimePicker(
//                          attribute: "date",
//                          inputType: InputType.date,
//                          format: DateFormat("yyyy-MM-dd"),
//                          decoration:
//                          InputDecoration(labelText: "Appointment Time"),
//                        ),
//                      );
////                      FormBuilder(
////                        key: _fbKey,
////                        autovalidate: true,
////                        child: FormBuilderDateTimePicker(
////                          attribute: "date",
////                          onChanged: (value){
////                            _dobController.text=value.toString();
////                          },
////                          inputType: InputType.date,
////                          format: DateFormat("yyyy-MM-dd"),
////                          decoration:
////                          InputDecoration(labelText: "Appointment Time"),
////                          readOnly: true,
////                        ),
////
////                      );
////                      Future<DateTime> selectedDate = showDatePicker(
////                        context: context,
////                        initialDate: DateTime.now(),
////                        firstDate: DateTime(1970),
////                        lastDate: DateTime(2030),
////                        builder: (BuildContext context, Widget child) {
////                          return Theme(
////                            data: ThemeData.dark(),
////                            child: child,
////                          );
////                        },
////                      );
////                      selectedDate.then((onValue) => _dobController.text = onValue.toString());
//                    },
//                    child: Container(
//                      child: TextFormField(
//                        enabled: false,
//                        controller: _dobController,
//                        maxLines: 1,
//                        decoration: InputDecoration(
//                          prefixIcon: Icon(Icons.date_range),
//                          hintText: "Date of birth",
//                          disabledBorder: OutlineInputBorder(
//                              borderRadius: BorderRadius.circular(5.0)
//                          ),
//
//                        ),
//                      ),
//                    ),
//                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _phoneController,
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly
                      ],
                      maxLines: 1,
                      validator: (value) {
                        RegExp exp = RegExp(r'^[0-9]+$');
                        if(!exp.hasMatch(value) || value.length < 6) {
                          return "Phone format invalid";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Your phone",
                          labelText: "Phone No.",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _genderController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Gender must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your gender",
                          labelText: "Student Gender",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _jobController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "JOB must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your job",
                          labelText: "User Job",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _heightController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Height must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your height",
                          labelText: "User height",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _weightController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Weight must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your weight",
                          labelText: "User weight",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _skinColorController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Address must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your skinColor",
                          labelText: "User skinColor",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _hairColorController,
                      maxLines: 1,
                      validator: (value) {
                        if(value.length < 4 || value.length > 255) {
                          return "Hair Color must be within 4 to 255 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your hair Color",
                          labelText: "User HairColor",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _profilePictureController,
                      maxLines: 1,
                      validator: (value) {
                        print("Value.length");
                        print(value.length);
//                        if(value.length < 4 || value.length > 255) {
//                          return "ProfilePiture must be within 4 to 255 characters";
//                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Your profilePicture",
                          labelText: "User profilePiture",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: (){
//                            ImagePicker.pickImage(source: ImageSource.gallery).then((imageFile){
//                              imgString=base64Encode(imageFile.readAsBytesSync());
//
//                            });
                            pickImageFromGallary();

                          },
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
//                  showImage(),
//                  FutureBuilder(
//                    future:   imageFile,
//                    builder: (context,data){
//                      print("DDDData:: $data");
//                      if(data.hasData){
//                        return Container(
//                          height: 200.0,
//                          child: Image.file(
//                            data.data,
//                            fit: BoxFit.contain,
//                            height: 200.0,
//                          ),
//                          color: Colors.blue,
//                        );
//                      }
//                      else
//                        {
//                          return Container(
//                            child: Text("No Photo"),
//                          );
//                        }
//                    },
//                  )
                Container(
                  child: selectedImage==null?Text("no photo"):Image(image: FileImage(selectedImage),)
                )

//                  Container(
//                    decoration: BoxDecoration(
//                      color: Colors.blueAccent,
//                      image: DecorationImage(
//                        image: FileImage(selectedImage),
//                        fit: BoxFit.fill,
//                      ),
//                    ),
//                  )
                ],
              ),

            )
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () async {
              print("HHHHEEEE");
              if(_formKey.currentState.validate()) {
                print("DateTime");
//            print(DateTime.parse(_dobController.text));
                User user = User(
                  id: null,
                  name: _nameController.text,
//                dateOfBirth: _dobController.text,
                  dateOfBirth:new DateTime.now(),
                  address: _addressController.text,
                  phone: _phoneController.text,
                  gender:true,
                  job:_jobController.text,
                  hairColor:_hairColorController.text,
                  profilePicture:imgString,
                  height: _heightController.text,
                  weight: _weightController.text,
                  skinColor: _skinColorController.text,

                );
                print("Student1 $user");
                print("profilePicturehahaha $imgString");
                print("profilePicturehahaha111 $imgString");
                await Provider.of<UserDao>(context, listen: false).insertUser(user);
//            Navigator.pop(context);
                print("Student2 $user");
              }
            },
            child: Icon(Icons.add),
          ),
         FloatingActionButton(
           child: Icon(Icons.navigate_next),
           onPressed: (){
             Navigator.push(
                 context,
             MaterialPageRoute(builder: (context)=>MyHome()),
             );
           },
         )
        ],
      ),

    );
  }
  pickImageFromGallary(){
    print("HJFLDJSFKLJFKLJSFKLJSFKLJ");
//    imageFile=ImagePicker.pickImage(source: ImageSource.gallery).whenComplete((){
//      setState(() {

//        imageFile=imageFile;
////        imgString=base64Encode(imageeee.readAsBytesSync());
//      });
//
//    })
//        .then((selectedImage){
//          setState(() {
//            imageFile=imageFile;
//          });
//      imgString=base64Encode(selectedImage.readAsBytesSync());
//  });


    ImagePicker.pickImage(source: ImageSource.gallery).then((image){
      setState(() {
        selectedImage=image;
      });
      print("SelectedImage $selectedImage");
      imgString=base64Encode(selectedImage.readAsBytesSync());
    });

//    ImagePicker.pickImage(source: ImageSource.gallery).then((selectedImage){
//      print("HIImage11111 $selectedImage");
////       imgString=base64Encode(selectedImage.readAsBytesSync());
//      imgString=base64Encode(selectedImage.readAsBytesSync());
//       print("Hello $imgString");
//       print(selectedImage.runtimeType);
//       print(imageFile.runtimeType);
//
////      setState(() {
////        imageFile=selectedImage;
////      });
//   }
//   );
//    print("selectedImage222222 $selectedImage");
//    setState(() {
//      imageFile=selectedImage;
//    });

  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        String ss=imageFile.toString();
        print("IMageeeeee $ss");
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          print("Error::");
          print(snapshot);
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

}