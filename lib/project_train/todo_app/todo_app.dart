import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/todo_app/model/todo_model.dart';
import 'package:kelas_flutter/project_train/todo_app/repository/sql_helper.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  // All journals
  List<Map<String, dynamic>> _todo = [];

  bool _isLoading = true;

  // This function is used to fetch all data from the database
  void _refreshTodo() async {
    final data = await SQLHelper.getItems();
    setState(() {
      _todo = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshTodo(); // Loading the diary when the app starts
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
// Insert a new journal to the database
  Future<void> _addItem() async {
    await SQLHelper.createItem(
        _titleController.text, _descriptionController.text);
    _refreshTodo();
  }

  // Update an existing journal
  Future<void> _updateItem(int id) async {
    await SQLHelper.updateItem(
        id, _titleController.text, _descriptionController.text);
    _refreshTodo();
  }

  // Delete an item
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Successfully deleted a item!'),
    ));

    _refreshTodo();
  }

  void _showForm(int? id) async {
    if (id != null) {
      // id == null -> create new item
      // id != null -> update an existing item
      final existingJournal =
          _todo.firstWhere((element) => element['id'] == id);
      _titleController.text = existingJournal['title'];
      _descriptionController.text = existingJournal['description'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                // this will prevent the soft keyboard from covering the text fields
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(hintText: 'Description'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save new journal
                      if (id == null) {
                        await _addItem();
                      }

                      if (id != null) {
                        await _updateItem(id);
                      }

                      // // Clear the text fields
                      _titleController.text = '';
                      _descriptionController.text = '';

                      // Close the bottom sheet
                      if (!mounted) return;
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Create New' : 'Update'),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _showForm(null);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text("Todo App")),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: SQLHelper.getItems(), // Future yang akan diawasi
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Ketika data masih dimuat, tampilkan indikator loading
            return const Center(
              child: Text("Tunggu Sebentar..."),
            );
          } else if (snapshot.hasError) {
            // Jika terjadi error, tampilkan pesan error
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            // Ketika data sudah tersedia, tampilkan ListView
            final journals = snapshot.data;
            List<TodoModel> dataTodo =
                journals?.map((e) => TodoModel.fromMap(e)).toList() ?? [];
            return ListView.builder(
              itemCount: dataTodo.length ?? 0,
              itemBuilder: (context, index) {
                print(journals);
                // final journal = journals![index]; Tanpa convert model
                final data = dataTodo[index];
                return Card(
                  color: Colors.blue[200],
                  margin: const EdgeInsets.all(15),
                  child: ListTile(
                    title: Text(data.title),
                    subtitle: Text(data.description),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _showForm(data.id),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteItem(data.id),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
