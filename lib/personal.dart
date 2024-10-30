// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/new_item.dart';
import 'package:portfolio/personal_list.dart';
import 'package:portfolio/personal_datastruct.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Personal();
  }
}

class _Personal extends State<Personal> {
  //Dummy Data

  final List<PersonalDataStruct> _registerData = [
    PersonalDataStruct(
        name: "Juan De la Cruz",
        phonenum: 12345,
        pic: "Pic1",
        date: DateTime.now(),
        category: Category.beginner),
    PersonalDataStruct(
        name: "Maria Clara",
        phonenum: 67890,
        pic: "Pic2",
        date: DateTime.now(),
        category: Category.advanced),
    PersonalDataStruct(
        name: "Peter Pan",
        phonenum: 95698,
        pic: "Pic3",
        date: DateTime.now(),
        category: Category.advanced),
    PersonalDataStruct(
        name: "Ann Green",
        phonenum: 12789,
        pic: "Pic4",
        date: DateTime.now(),
        category: Category.beginner),
  ];

  void _openAddItem() {
    showModalBottomSheet(
      context: context,
      builder: (ctxvar) => const NewItem(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Personal Portfolio"), actions: [
        IconButton(
          onPressed: _openAddItem,
          icon: const Icon(Icons.add_box_rounded),
        ),
      ]),
      body: Column(
        children: [
          const Text('Personal Portfolio'),
          Expanded(child: PersonaList(personallist: _registerData)),
        ],
      ),
    );
  }
}
