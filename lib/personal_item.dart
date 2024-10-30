import 'package:flutter/material.dart';
import 'package:portfolio/personal_datastruct.dart';

class PersonalItem extends StatelessWidget {
  final PersonalDataStruct personal;

  const PersonalItem(this.personal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(personal.name),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('\$${personal.phonenum.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[personal.category]),
                    const SizedBox(width: 10),
                    Text(personal.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
