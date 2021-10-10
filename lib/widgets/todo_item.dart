import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final double iconSize = 24.0;

  const TodoItem({Key? key}) : super(key: key);

  void _deleteTodo(BuildContext context) async {
    try {
      // to delete data from DataStore, we pass the model instance to
      // Amplify.DataStore.delete()
    } catch (e) {
      print('An error occurred while deleting Todo: $e');
    }
  }

  Future<void> _toggleIsComplete() async {
    try {
      // to update data in DataStore, we again pass an instance of a model to
      // Amplify.DataStore.save()
    } catch (e) {
      print('An error occurred while saving Todo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          _toggleIsComplete();
        },
        onLongPress: () {
          _deleteTodo(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('todo name',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text('No Description'),
              ],
            ),
            Icon(Icons.check_box, size: iconSize),
          ]),
        ),
      ),
    );
  }
}
