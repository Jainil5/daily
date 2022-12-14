import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WordlePage extends StatefulWidget {
  const WordlePage({Key? key}) : super(key: key);

  @override
  State<WordlePage> createState() => _WordlePageState();
}

class _WordlePageState extends State<WordlePage> {
  TextEditingController inputController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),

          child: Column(
            children: [
              const Center(
                child: Text("Wordle",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              const SizedBox(height: 60,),
              const Text("plpae",style: TextStyle(fontSize: 24),),
              const SizedBox(height: 30,),
              const Text("Guess the word!",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 10,),
              const SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.text,
                controller: inputController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your guess',
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(inputController.text.toString()==""){
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
                        if(inputController.text.toLowerCase().toString()=="apple"){
                          Fluttertoast.showToast(
                              msg: 'Correct',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.grey,
                              textColor: Colors.black,
                              timeInSecForIosWeb: 1,
                          );

                        }
                        else{
                          Fluttertoast.showToast(
                            msg: 'Wrong guess',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            timeInSecForIosWeb: 1,
                          );
                          inputController.clear();
                        }
                      }
                    }
                    );
                  },
                child: const Text("CHECK"),
              ),
            ],
          ),
      );
  }
}
