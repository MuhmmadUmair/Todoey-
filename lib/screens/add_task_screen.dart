import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              const SizedBox(height: 20),
              Form(
                child: TextFormField(
                  controller: _controller,
                  autofocus: true,
                  focusNode: _focusNode,
                  textAlign: TextAlign.center,
                  onFieldSubmitted: (value) {
                    _addTask(context);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter task title',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  onPressed: () {
                    _addTask(context);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addTask(BuildContext context) {
    final newTaskTitle = _controller.text;
    if (newTaskTitle.isNotEmpty) {
      Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
      _controller.clear();
      Navigator.pop(context);
    } else {
      // Optionally show an error or feedback if the task title is empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Task title cannot be empty'),
        ),
      );
    }
  }
}
