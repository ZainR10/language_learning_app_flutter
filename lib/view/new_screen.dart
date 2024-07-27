import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  Future<void> addData(String title, String desc) async {
    if (title.isEmpty || desc.isEmpty) {
      print('Enter required fields');
    } else {
      try {
        await FirebaseFirestore.instance
            .collection("Users")
            .doc(title)
            .set({"Title": title, "Description": desc});
        print('Data inserted');
      } catch (e) {
        print('Error adding data: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(),
                hintText: 'Enter title',
                hintStyle: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: descController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.description),
                border: OutlineInputBorder(),
                hintText: 'Enter description',
                hintStyle: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              addData(titleController.text, descController.text);
            },
            child: const Text('Save Data'),
          ),
        ],
      ),
    );
  }
}
