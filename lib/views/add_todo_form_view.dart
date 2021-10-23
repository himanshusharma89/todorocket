import 'package:flutter/material.dart';
import 'package:todorocket/widgets/text_form_filed_shadow.dart';

class AddTodoFormView extends StatefulWidget {
  const AddTodoFormView({Key? key}) : super(key: key);

  @override
  _AddTodoFormViewState createState() => _AddTodoFormViewState();
}

class _AddTodoFormViewState extends State<AddTodoFormView> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  Future<void> _saveTodo() async {
    // these fields will be used later
    String name = _nameController.text;
    String description = _descriptionController.text;

    try {
      // save new Todo
      Navigator.pop(context);
    } catch (e) {
      debugPrint('Error occured while saving Todo $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Todo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormFieldShadow(
                child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(right: 15, left: 15),
                        enabledBorder: InputBorder.none))),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldShadow(
                child: TextFormField(
                    controller: _descriptionController,
                    minLines: 5,
                    maxLines: 10,
                    decoration: const InputDecoration(
                        hintText: 'Description',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(15),
                        enabledBorder: InputBorder.none))),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          height: kToolbarHeight,
          child:
              ElevatedButton(onPressed: _saveTodo, child: const Text('Save'))),
    );
  }
}
