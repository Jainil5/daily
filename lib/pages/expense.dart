import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  late List<String> listAmount;
  late List<String> listReason;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text("Expense Manager",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),

            TextField(
              decoration: const InputDecoration(
                hintText: "Enter amount:",
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
                border: OutlineInputBorder(),
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered

            ),
            TextField(
              controller: reasonController,
              decoration:  const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter reason:",
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            FloatingActionButton.extended(
              onPressed: () {

                setState(() {
                  if (amountController.text.toString()=="" || reasonController.text.toString()==""){
                    Fluttertoast.showToast(
                      msg: 'None of the fields can be empty.',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.grey,
                      textColor: Colors.black,
                      timeInSecForIosWeb: 1,
                    );
                  }
                  else{
                    Fluttertoast.showToast(
                      msg: 'Added successfully.',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.grey,
                      textColor: Colors.black,
                      timeInSecForIosWeb: 1,
                    );
                    listAmount.add(amountController.text.toString());
                    listReason.add(reasonController.text.toString());

                    amountController.clear();
                    reasonController.clear();
                  }
                });
              },
              label:const Text("Add"),
              backgroundColor: Colors.green,
              icon: const Icon(Icons.add),
            ),
            FloatingActionButton.extended(
              onPressed: () {
              },
              backgroundColor: Colors.red,
              label: const Text("View expenses"),
              icon: const Icon(Icons.history),
            ),
          ],
        ),
      ),
    );
  }
}
