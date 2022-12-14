import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<String> entries = <String>[];
  final List<int> ticks = [];
  TextEditingController taskController = TextEditingController();
  bool isChecked = false;
  var tick =false;
  int index1 =0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              const Center(
                child: Text("Tasks",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
              padding: const EdgeInsets.all(0),
              child: TextField(
              controller: taskController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Add task',
              ),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    setState(() {
                      if(taskController.text.toString()==""){
                        Fluttertoast.showToast(
                          msg: 'Field cannot be empty',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      }
                      else{
                        entries.add(taskController.text.toString());
                        taskController.clear();
                      }
                    }
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("add")
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      IconButton(
                          icon: Icon(
                              tick ? Icons.check_box: Icons.check_box_outline_blank
                          ),
                        
                        onPressed: (){
                          setState(() {
                            tick=!tick;
                          });
                        },
                        ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(entries[index]),

                    ],
                  );
                }
            ),
        )
      ],
    );

  }
}
