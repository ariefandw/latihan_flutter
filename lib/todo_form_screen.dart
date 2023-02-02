import 'package:flutter/material.dart';

class TodoFormScreen extends StatefulWidget {
  const TodoFormScreen({super.key});

  @override
  State<TodoFormScreen> createState() => _TodoFormScreenState();
}

class _TodoFormScreenState extends State<TodoFormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Todo'),
          actions: [
            IconButton(
                icon: const Icon(Icons.save),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data tersimpan')));
                    Navigator.of(context).pop();
                  }
                }),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Judul',
                  hintText: 'Masukkan Judul',
                ),
                validator: (value) =>
                    (value ?? '').isEmpty ? 'Judul tidak boleh kosong' : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Deskripsi',
                  hintText: 'Masukkan Deskripsi',
                ),
                validator: (value) => (value ?? '').isEmpty
                    ? 'Deskripsi tidak boleh kosong'
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
