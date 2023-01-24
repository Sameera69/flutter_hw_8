import 'package:flutter/material.dart';

final List<String> _todoList = <String>[];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textFieldController = TextEditingController();

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _displayDialog(context),
        tooltip: 'Add Item',
        backgroundColor: Colors.brown,
        child: const Icon(Icons.add),
      ),
      body: ListView(children: _getItems()),
    );
  }

  void _addTodoItem(String title) {
    //  a set state will notify the app that the state has changed
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }

  Widget _buildTodoItem(
    String title,
  ) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
        ),
        const Divider(),
      ],
    );
  }

  Future<AlertDialog?> _displayDialog(BuildContext context) async {
    // alter the app state to show a dialog
    return showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add a task to your list'),
            content: TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(hintText: 'Enter task here'),
            ),
            actions: <Widget>[
              InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                      _addTodoItem(_textFieldController.text);
                    });
                  },
                  child: const Text('ADD')),
              InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text('CANCEL')),
            ],
          );
        });
  }

  // iterates through our todo list title
  List<Widget> _getItems() {
    final List<Widget> todoWidgets = <Widget>[];
    for (String title in _todoList) {
      todoWidgets.add(_buildTodoItem(title));
    }
    return todoWidgets;
  }
}

// fixed todo list with checkbox
class ToDoItem extends StatefulWidget {
  String ToDotitle = '';
  String discription = '';
  ToDoItem({super.key, required this.ToDotitle, required this.discription});

  @override
  State<ToDoItem> createState() => _ToDoItem();
}

class _ToDoItem extends State<ToDoItem> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          //fillColor: MaterialStateProperty.resolveWith(),
          value: isChecked,
          shape: const CircleBorder(),
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' ${widget.ToDotitle}',
            ),
            Text(
              ' ${widget.discription}',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
