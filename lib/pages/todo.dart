import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();

    var itemLength = 1;
    return ListView(
      children: [
      Container(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            children: [
              const Center(
                child: Text("Tasks",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
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

                            }
                          }
                          );
                        },
                        icon: const Icon(Icons.add),
                        label: const Text("add")
                    ),
                    ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                      Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: Center(
                          child: Text(taskController.text.toString())),
                    ),
                    ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
    );
  }
}
