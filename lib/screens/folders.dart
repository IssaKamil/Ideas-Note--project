import 'package:flutter/material.dart';
import 'package:note_project/widgets/dialogue_box.dart';
import 'package:note_project/widgets/note_tiles.dart';

class Folders extends StatefulWidget {
  const Folders({super.key});

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  final _controller = TextEditingController();

  List items = [];

  void savetask() {
    setState(() {
      items.add([_controller.text, false]);
      _controller.clear();

      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
          child: Text(
            'Folders',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(color: Colors.amber, fontSize: 20.0),
              )
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.maxFinite, 50.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              clipBehavior: Clip.hardEdge,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.grey)
                ),
                focusColor: Colors.black,
                hintText: 'Search',
                isDense: true,
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 17.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.grey)
                ),
                prefixIcon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialogwidget(controller: _controller);
                  }
                );
              },
              icon: const Icon(
                Icons.folder,
                color: Colors.amber,
              )
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_note,
                color: Colors.amber,
              )
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: const Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 10.0),
                        child: Text(
                          'On My Phone',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) =>
                    const FolderTiles(folderName: 'Notes')
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
