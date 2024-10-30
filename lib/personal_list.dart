import 'package:flutter/material.dart';
import 'package:portfolio/personal_datastruct.dart';
import 'package:portfolio/personal_item.dart';

class PersonaList extends StatelessWidget {
  const PersonaList({super.key, required this.personallist});

  final List<PersonalDataStruct> personallist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personallist.length,
      itemBuilder: (ctx, index) => PersonalItem(personallist[index]),
    );
  }
}
