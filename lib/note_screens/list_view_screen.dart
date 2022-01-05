import 'package:flutter/material.dart';

import 'note_details_screen.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewScreen createState() => _ListViewScreen();
}

class _ListViewScreen extends State<ListViewScreen> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigate('Add Note');
        },
        tooltip: "Add Note",
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: const Text("Title"),
            subtitle: const Text("SubTitle"),
            trailing: const Icon(Icons.delete, color: Colors.grey),
            onTap: () {
              navigate('Edit Note');
            },
          ),
        );
      },
    );
  }

  void navigate(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetailsScreen(title);
    }));
  }
}
