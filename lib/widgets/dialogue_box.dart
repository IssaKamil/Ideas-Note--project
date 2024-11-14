import 'package:flutter/material.dart';
import 'package:note_project/widgets/text_field.dart';

class Dialogwidget extends StatelessWidget {
  final Function()? saved;
  final TextEditingController controller;

  const Dialogwidget({super.key, this.saved, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 200.0,
        width: 300.0,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text('New Folder'),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('Enter a name for this folder'),
            ),
            TextFieldWidget(
              hintTitle: 'Name',
              radius: BorderRadius.circular(10.0),
              hintTitleColor: Colors.grey,
              obscure: false
            ),
            const Divider(
              height: 20.0,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')
                ),
                TextButton(onPressed: () {}, child: const Text('Save'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
