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
      body: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.horizontal,
        onDismissed: (_) {},
        child: ListView(
          children: [
            for (int i = 0; i < 20; i++)
              ListTile(
                leading: null,
                title: const Text('Judul Todo'),
                subtitle: const Text(
                  'Ini adalah deskripsi tulisan tulisan',
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
