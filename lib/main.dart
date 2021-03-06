import 'package:flutter/material.dart';
import 'package:todorocket/views/todo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.black))),
      home: const TodosView(title: 'Todo Rocket'),
    );
  }
}
