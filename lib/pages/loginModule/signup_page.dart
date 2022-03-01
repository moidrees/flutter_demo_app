import 'package:first_demo_app/utils/project_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class SignUpPage extends StatefulWidget{
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: const Align(
              alignment: Alignment.center,
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Please Fill Your Details",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.tealAccent, width: 0.0),
                        ),
                        hintText: "Enter Username",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: ProjectUtils.validateUsername,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.tealAccent, width: 0.0),
                        ),
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: ProjectUtils.validateEmail,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.tealAccent, width: 0.0),
                        ),
                        hintText: "Enter Mobile no.",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Mobile no.",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: ProjectUtils.validateMobile,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.tealAccent, width: 0.0),
                        ),
                        hintText: "Address",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Address",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: ProjectUtils.validateAddress,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () => onSignUpClick(context),
                    child: const Text(
                      "Signup",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        minimumSize: const Size(200, 46),
                        backgroundColor: Colors.teal[900]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onSignUpClick(BuildContext context) {
    if(formKey.currentState!.validate()) {
      performSignup(context);
    }
  }

  void performSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeRoute);
  }
  
}