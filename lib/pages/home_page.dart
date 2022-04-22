// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(32),
      children: [buildEmail(emailController), SizedBox(height: 10), buildPassword(), SizedBox(height: 10), buildNumber(numberController)],
    );
  }
}

//Email Widget
Widget buildEmail(emailController) => TextField(
      controller:emailController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'name@Example.com',
          labelText: 'Email',
          prefix: Icon(Icons.mail_outline),
          suffixIcon: IconButton(
            icon: Icon(Icons.close_sharp),
            onPressed: () {
              emailController.clear();
            },
          )),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );

//Password Widget
Widget buildPassword() => TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility_off),
          onPressed: () {
            TextEditingController().clear();
          },
        )));

// Number Widget
Widget buildNumber(numberController) => TextField(
  controller: numberController,
  decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Number',
        suffixIcon: IconButton(
          icon: Icon(Icons.format_list_numbered_rounded),
          onPressed: () {
            TextEditingController().clear();
          },
        ))
);
