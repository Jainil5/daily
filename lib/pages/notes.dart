import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),

      child: Column(
        children: [
          const Center(
            child: Text("Notes",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          const SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: (){

            },child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20,),
          TextField(
          keyboardType: TextInputType.text,
          controller: noteController,
          decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: '',
          ),
          ),

        ],
      ),
    );
  }
}
