import 'package:flutter/material.dart';

class FolderTiles extends StatelessWidget {
  final String folderName;

  const FolderTiles({
    super.key,
    required this.folderName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          tileColor: Colors.white70,
          leading: const Icon(
            Icons.folder_outlined,
            color: Colors.amber,
          ),
          title: Text(folderName),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5.0,)
      ],
    );
  }
}