// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        actions: [Icon(Icons.settings, color: Colors.black)],
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          Row(children: [
            Container(child: Text('Man')),
            Container(child: Text('Woman')),
          ],),
          heightEmail(heightController), 
          SizedBox(height: 10), 
          weightBuild(weightController), 
          SizedBox(height: 10),],
      ),
      
    );
  }
}

//Email Widget
Widget heightEmail(heightController) => TextField(
      controller:heightController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Your height in Cm',
          suffixIcon: IconButton(
            icon: Icon(Icons.man),
            onPressed: () {
              heightController.clear();
            },
          )),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );

//Password Widget
Widget weightBuild(weightController) => TextField(
    controller: weightController,
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Your Weight in Kg',
        suffixIcon: IconButton(
          icon: Icon(Icons.balance),
          onPressed: () {
            weightController.clear();
          },
        )));
