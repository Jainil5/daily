import 'package:daily/main.dart';
import 'package:daily/pages/home.dart';
import 'package:daily/pages/signup.dart';
import 'package:daily/pages/todo.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Image.asset("assets/images/california.jpg"),
            const Center(
                child: Text("DAILY APP",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),)),
            const SizedBox(height: 10,),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),

            Container(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User ID',
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10,),

            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',style: TextStyle(fontSize: 16),),
            ),
            const SizedBox(height: 10,),

            FloatingActionButton.extended(
              extendedPadding: const EdgeInsets.all(16),
              onPressed: () {
                setState(() {
                  if(nameController.text.toString().isEmpty || passwordController.text.toString().isEmpty ){
                  Fluttertoast.showToast(
                    msg: 'none of the fields can be empty.',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.grey,
                    textColor: Colors.black,
                    timeInSecForIosWeb: 1,
                  );
                  }
                  else{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  Fluttertoast.showToast(
                    msg: 'Logged in successfully.',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.grey,
                    textColor: Colors.black,
                    timeInSecForIosWeb: 1,
                  );
                }
                });
              }, icon: const Icon(Icons.login), label: const Text("Login",style: TextStyle(fontSize: 24),),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
                  },
                )
              ],
            ),
          ],
        ));
  }
}
