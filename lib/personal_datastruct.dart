import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { beginner, intermediate, advanced }

final formatter = DateFormat.yMd();

const categoryIcons = {
  Category.beginner: Icons.baby_changing_station,
  Category.intermediate: Icons.backpack,
  Category.advanced: Icons.medical_information,
};

class PersonalDataStruct {
  PersonalDataStruct(
      {required this.name,
      required this.phonenum,
      required this.pic,
      required this.date,
      required this.category})
      : id = uuid.v4();

  //Properties
  final String id;
  final String name;
  final String pic;
  final int phonenum;
  final DateTime date;
  final Category category;

  // methods for formatting the Date
  String get formattedDate {
    // constructor for the date formatting
    return formatter.format(date);
  }
}
