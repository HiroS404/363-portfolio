import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItem();
}

class _NewItem extends State<NewItem> {
  var _enteredName = '';

  final _nameController = TextEditingController();
  final _phonenumController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phonenumController.dispose();
    super.dispose();
  }

  // void _saveNameInput(String inputValue) {
  //   _enteredName = inputValue;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            controller: _nameController,
            decoration: const InputDecoration(
              label: Text('Name'),
            ),
          ),
          TextField(
            controller: _phonenumController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: 'PN - ',
              label: Text('Phone number'),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_nameController.text);
                  print(_phonenumController.text);
                },
                child: const Text("SAVE Entry"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
