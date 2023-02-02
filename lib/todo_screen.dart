import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < 20; i++)
            const ListTile(
              leading: null,
              title: Text('Judul Todo'),
              subtitle: Text(
                'Ini adalah deskripsi tulisan tulisan',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.chevron_right),
            )
        ],
      ),
    );
  }
}
