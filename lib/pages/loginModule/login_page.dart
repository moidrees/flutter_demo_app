import 'package:first_demo_app/utils/project_utils.dart';
import 'package:first_demo_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if(formKey.currentState!.validate()) {
      performLogin(context);
    } else {
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      /*appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: const Text(
            "Login Page",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),*/
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black26,
                      backgroundImage: AssetImage(
                        'images/login_profile.png',
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'BebasNeue',
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      "Please Enter Login Details",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSerifPro',
                          color: Colors.white),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20,),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.tealAccent, width: 0.0),
                            ),
                              hintText: "Mobile No.",
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.white,
                              labelText: "Mobile No.",
                              labelStyle: TextStyle(color: Colors.white)),
                          validator: ProjectUtils.validateMobile
                        ),
                        const SizedBox(height: 10,),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.white)),
                          validator: ProjectUtils.passwordValidate,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, AppRoutes.signupRoute);
                            },
                            child: const Text("SignUp",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white))),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.forgotPasswordRoute);
                          },
                          child: const Text("Forgot Password",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () => validate(),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(150, 46),
                          backgroundColor: Colors.teal[900]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  void performLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeRoute);
  }
}
