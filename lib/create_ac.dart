

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:project/Api&Url/ApiClass.dart';
import 'package:project/home.dart';

class acoountpage extends StatefulWidget {
  const acoountpage({super.key});

  @override
  State<acoountpage> createState() => _acoountpageState();
}

class _acoountpageState extends State<acoountpage> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
 
  TextEditingController passwordcontroller = TextEditingController();
   TextEditingController namecontroller = TextEditingController();
   String im="";

  bool passwordvisible = true;
  @override
  void initState() {
    passwordvisible = false;
  }

  bool _first = true;

  File? _profileimage;
  Future<void> _pickprofileImage() async {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text("choose from Gallery"),
                  onTap: () {
                    _getImage(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text("Take a photo"),
                  onTap: () {
                    _getImage(ImageSource.camera);
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickerFile = await picker.pickImage(source: source);
    if (pickerFile != null) {
      setState(() {
        _profileimage = File(pickerFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Accounts",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 232, 231, 229),
                            radius: 50,
                            child: GestureDetector(
                                onTap: _pickprofileImage,
                                child: _profileimage == null
                                    ? CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 232, 231, 229),
                                        radius: 50,
                                        child: Icon(
                                          Icons.person_2_outlined,
                                          size: 40,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            FileImage(_profileimage!),
                                      )),
                          ),
                          Positioned(
                            left: 70,
                            top: 80,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.orangeAccent,
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    )
                    // Container(
                    //     child: CircleAvatar(
                    //   radius: 50,
                    //   backgroundColor: Color.fromARGB(255, 234, 232, 227),
                    //   child: Icon(
                    //     Icons.person,
                    //     size: 50,
                    //     color: Colors.black54,
                    //   ),
                    // )),

                    ,
                    Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.deepOrangeAccent),
                            )
                          ],
                        )),
                    TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Enter name"),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Mobile number",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.deepOrangeAccent),
                        )
                      ],
                    ),
                    IntlPhoneField(
                        flagsButtonPadding: EdgeInsets.all(8),
                        controller: numbercontroller,
                        dropdownIconPosition: IconPosition.trailing,
                        decoration: InputDecoration(
                            hintText: "Enter mobile  number",
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                        initialCountryCode: "IN",
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        }),
                    Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Email Id",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.deepOrangeAccent),
                            )
                          ],
                        )),
                    TextField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter email"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.deepOrangeAccent),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 13,
                      width: double.infinity,
                      child: TextField(
                        controller: passwordcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: !passwordvisible,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter password",
                            suffix: IconButton(
                              icon: Icon(
                                passwordvisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  passwordvisible = !passwordvisible;
                                });
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              FloatingActionButton.small(
                                  shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  child: Container(
                                      child: Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        color: !_first
                                            ? Colors.white
                                            : Colors.black,
                                      )),
                                  backgroundColor: Colors.white70,
                                  splashColor: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      _first = !_first;
                                    });
                                  }),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Row(
                                        children: [
                                          Text(
                                            "l would like to recieve marketing offers and ",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                        "promotional communications from Booking.com",
                                        style: TextStyle(fontSize: 13))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AnimatedPhysicalModel(
                            duration: Duration(seconds: 1),
                            color: !_first ? Colors.white10 : Colors.orange,
                            elevation: 5,
                            shadowColor: Colors.black12,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(18),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white60),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                "create account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        onTap: () {
                         signUpUser();
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),


      
    );
    




    

  }
   void signUpUser( ) async {
    final _username =namecontroller.text;
    final _email = emailcontroller.text;
    final _mobile = numbercontroller.text;

    final _password = passwordcontroller.text;
final ima=im;
    if (_username.isEmpty) {
      showErrorMessage('Please enter first name');
    } else if (_email.isEmpty) {
      showErrorMessage('Please enter email id');
    } else if (_mobile.isEmpty) {
      showErrorMessage('Please enter mobile number');
    } else if (_password.isEmpty) {
      showErrorMessage('Please enter your password');
    } else {
      final _formData = FormData.fromMap({
        'username': _username,
        'email': _email,
        'phone': _mobile,
        'password': _password,
        "image":ima
      });

      final _result = await ApiClass().RegisterUserApi(_formData);

      if (_result != null) {
         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => home(),
                              ));
          showSuccessMessage("sucsess");
        } else {
          showErrorMessage("errorr");
        }
      }
    }
     void showErrorMessage(String message) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  void showSuccessMessage(String message) {
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  }

 






