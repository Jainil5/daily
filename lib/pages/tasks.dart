import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<String> entries = <String>[];
  TextEditingController taskController = TextEditingController();
  bool isChecked = false;
  var _isVisible =false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        const Center(
          child: Text("Tasks",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                        msg: 'Logged in successfully.',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.black,
                        timeInSecForIosWeb: 1,
                      );
                    }
                    else{
                      entries.add(taskController.text.toString());
                    }
                  }
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text("add")
            ),
            Container(
              child: Row(
                children: [
                  Visibility(
                    visible: _isVisible,
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                        if(entries.isEmpty){
                          _isVisible=false;
                        }
                        else{
                         _isVisible=true;
                        }
                      });
                      },
                    ),
                  ),
                  Text(taskController.text),
                ],
              ),
            )
          ],
        ),
      ],
    );


  }
}
