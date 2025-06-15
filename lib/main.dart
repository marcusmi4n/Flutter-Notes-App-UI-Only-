import 'package:flutter/material.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Notes App', home: NotesHome());
  }
}

class NotesHome extends StatelessWidget {
  final List<String> notes = ["Meeting at 10", "Buy milk", "Call client"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Notes")),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Card(child: ListTile(title: Text(notes[index])));
        },
      ),
    );
  }
}
