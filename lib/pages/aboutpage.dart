import 'package:daily/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text("Daily"),
        ),
        body:SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    const Center(child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.lightBlueAccent,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text("About Expense Manager",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                Text(""),
                                Card(
                                  color: Colors.lightBlue,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text("Daily App is an productivity app that helps you daily. This is app is built to have easy access for using multiple functionalities in a single app.\n Fuctionalities of the app:"
                                        "\n1.Word: Learn different words everyday to boost your knowledge.\n2.Tasks: Add tasks for your routine.\n3.Notes: Take necessary notes for your routine.\n4: News: Get latest news update "
                                        "\n5: Expense Manager: Track your daily expenses to keep track of your money usage.\n6:Wordle: A game to guess different words everyday for fun.",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.lightBlueAccent,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("Profiles",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                const Text(""),
                                Card(
                                  color: Colors.lightBlue,
                                  child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          FloatingActionButton.extended(
                                            onPressed: (){
                                              Fluttertoast.showToast(
                                                msg: 'Coming soon',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                backgroundColor: Colors.grey,
                                                textColor: Colors.black,
                                                timeInSecForIosWeb: 1,
                                              );
                                            },
                                            label: const Text("Visit Youtube"),
                                            icon: const Icon(Icons.subscriptions_sharp),
                                          ),
                                          const Text(" "),
                                          FloatingActionButton.extended(
                                            onPressed: (){
                                              Fluttertoast.showToast(
                                                msg: 'Coming soon',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                backgroundColor: Colors.grey,
                                                textColor: Colors.black,
                                                timeInSecForIosWeb: 1,
                                              );
                                            },
                                            label: const Text("Visit Instagram"),
                                            icon: const Icon(Icons.camera_alt_outlined),
                                          ),
                                          const Text(" "),
                                          FloatingActionButton.extended(
                                            onPressed: (){
                                              Fluttertoast.showToast(
                                                msg: 'Coming soon',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                backgroundColor: Colors.grey,
                                                textColor: Colors.black,
                                                timeInSecForIosWeb: 1,
                                              );
                                            },
                                            label: const Text("Mail Us"),
                                            icon: const Icon(Icons.mail),
                                          )
                                        ],
                                      )

                                  ),
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.lightBlueAccent,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("About Developer",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: CupertinoColors.white),),
                                const Text(""),
                                Card(
                                  color: Colors.lightBlue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text("Jainil Patel",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        Text(""),
                                        Text("Contact:",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text("Mobile: 1234567890"),
                                        Text("Mail: xyz@gmail.com"),


                                      ],
                                    ),                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: CupertinoColors.activeBlue,

      ),
    );
  }
}
