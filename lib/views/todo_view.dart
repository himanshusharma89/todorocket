import 'package:flutter/material.dart';
import 'package:todorocket/models/Todo.dart';
import 'package:todorocket/widgets/todo_item.dart';

import 'add_todo_form.dart';

class TodosPage extends StatefulWidget {
  final String title;
  const TodosPage({required this.title, Key? key}) : super(key: key);
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  void initState() {
    // to be filled in a later step
    super.initState();
  }

  @override
  void dispose() {
    // to be filled in a later step
    super.dispose();
  }

  Future<void> _initializeApp() async {
    // to be filled in a later step
  }

  Future<void> _configureAmplify() async {
    // to be filled in a later step
  }

  Future<void> _fetchTodos() async {
    // to be filled in a later step
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(child: CircularProgressIndicator()),
      // body: _isLoading
      //     ? Center(child: CircularProgressIndicator())
      //     : TodosList(todos: _todos),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: kToolbarHeight,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddTodoForm()),
            );
          },
          child: const Text('Add Todo'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class TodosList extends StatelessWidget {
  final List<Todo> todos;

  const TodosList({required this.todos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return todos.isNotEmpty
        ? ListView(
            padding: const EdgeInsets.all(8),
            children: todos.map((todo) => TodoItem(todo: todo)).toList())
        : const Center(child: Text('Tap button below to add a todo!'));
  }
}
