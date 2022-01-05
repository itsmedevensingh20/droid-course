import 'package:flutter/material.dart';

class NoteDetailsScreen extends StatefulWidget {
  String toolBarTitle;

  NoteDetailsScreen(this.toolBarTitle);

  @override
  _NoteDetailsScreen createState() => _NoteDetailsScreen(this.toolBarTitle);
}

class _NoteDetailsScreen extends State<NoteDetailsScreen> {
  var count = 0;
  static final _priorities = ['High', 'Low'];
  String toolBarTitle;

  _NoteDetailsScreen(this.toolBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;

    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    Future<bool> _willPopCallback() async {
      return true;
    }

    return WillPopScope(
        onWillPop: () => _willPopCallback(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(toolBarTitle),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  moveToLastScreen();
                }),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: DropdownButton(
                    items: _priorities.map((String dropDownStringItems) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItems,
                        child: Text(dropDownStringItems),
                      );
                    }).toList(),
                    style: textStyle,
                    value: 'Low',
                    onChanged: (valueSelectedByUser) {
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint("Clicked on list item");
                    },
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint("Clicked on Description item");
                    },
                    decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: const Text(
                            'Save',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Clicked ");
                            });
                          },
                        ),
                      ),
                      Container(width: 5.0),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: const Text(
                            'Delete',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Clicked ");
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }
}
