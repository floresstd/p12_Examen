import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NoteList(),
    );
  }
}

class NoteList extends StatelessWidget {
  final List<Map<String, String>> notes = [
    {'title': 'Note Title 1', 'content': 'Note Content 1'},
    {'title': 'Note Title 2', 'content': 'Note Content 2'},
    {'title': 'Note Title 3', 'content': 'Note Content 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Flores 1186',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 2,
      ),
      body: ListView.separated(
        itemCount: notes.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: Color(0xffcfcfcf),
          thickness: 0.5,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              notes[index]['title']!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: Text(
              notes[index]['content']!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          );
        },
      ),
    );
  }
}
