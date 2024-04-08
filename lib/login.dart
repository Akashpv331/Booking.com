import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project/create_ac.dart';
import 'package:project/forgot_password.dart';
import 'package:project/permission.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool passwordvisible=true;
  @override
  void initState() {
    passwordvisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/loginbackground.jpg",
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.2), BlendMode.dstATop))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Booking",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                                child: Text(
                              ".com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Welcome  to ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Booking.com",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "Get",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      size: 17,
                    ),
                    Text("2000 off when you sign up!",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntlPhoneField(
                    flagsButtonPadding: EdgeInsets.all(8),
                    controller: numbercontroller,
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: InputDecoration(
                        labelText: "phone number",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                    initialCountryCode: "IN",
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: MediaQuery.of(context).size.height/14,
                  child: TextField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.text,
                    obscureText: !passwordvisible,
                    
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter password",suffix: IconButton(icon:  Icon(passwordvisible?Icons.visibility:Icons.visibility_off,color:Colors.black,),
                          onPressed: (){
                            setState(() {
                              passwordvisible=!passwordvisible;
                            });
                          },)),
                        
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                          color: Colors.orangeAccent),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => permissionpage(),
                          ));
                    }),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 1,
                        color: Color.fromARGB(60, 132, 127, 127),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("or login"),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          width: 100,
                          height: 1,
                          color: Color.fromARGB(60, 132, 127, 127))
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/google.jpg"),
                  ),
                  CircleAvatar(backgroundImage: AssetImage("assets/facebook.jpg"))
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: InkWell(
                    child: Text(
                      "Create  account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => acoountpage(),
                          ));
                    },
                  )),
              GestureDetector(
                child: Text(
                  "Forgot password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot(),));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
