import 'dart:async';

import 'package:flutter/material.dart';

import 'add_todo_form_view.dart';

class TodosView extends StatefulWidget {
  final String title;
  const TodosView({required this.title, Key? key}) : super(key: key);
  @override
  _TodosViewState createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  bool _isLoading = true;

  @override
  void initState() {
    // initialize the app
    _initializeApp();
    super.initState();
  }

  Future<void> _initializeApp() async {
    // configure Amplify
    await _configureAmplify();

    await _fetchTodos();

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _configureAmplify() async {
    try {
      // add Amplify Plugins to Configure
    } catch (err) {
      debugPrint('Erro occured while configuring Amplify $err');
    }
  }

  Future<void> _fetchTodos() async {
    try {
      // query for all Todo entries by passing the Todo classType to
      // Amplify.DataStore.query()
    } catch (e) {
      print('An error occurred while querying Todos: $e');
    }
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
      body: const Center(child: CircularProgressIndicator()),
      // body: _isLoading
      //     ? const Center(child: CircularProgressIndicator())
      //     : TodosList(todos: _todos),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: kToolbarHeight,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddTodoFormView()),
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
  const TodosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return todos.isNotEmpty
    //     ? ListView(
    //         padding: const EdgeInsets.all(8),
    //         children: todos.map((todo) => TodoItem(todo: todo)).toList())
    return const Center(child: Text('Tap button below to add a todo!'));
  }
}
