import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(child: Text("News",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),)),
        const SizedBox(height: 20,),
        Container( //this
          color: Colors.black12,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/messi.jpg",
                width: 100,height: 100,
              ),
              Container(
                width: 250,
                child: Column(
                  children: [
                    const Text("Messi taking Argentina into finals with a brilliant "
                        "goal and assist",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.more_horiz), label: const Text("View More"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container( //this
          color: Colors.black12,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/california.jpg",
                width: 80,height: 100,
              ),
              SizedBox(width: 20,),
              Container(
                width: 250,
                child: Column(
                  children: [
                    const Text("California yet again declared as the most clean city sccordint to uspn",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.more_horiz), label: const Text("View More"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container( //this
          color: Colors.black12,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset("assets/images/messi.jpg",
                width: 100,height: 100,
              ),

              Container(
                width: 250,
                child: Column(
                  children: [
                    const Text("Can Messi lift the world cup trophy?",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.more_horiz), label: const Text("View More"))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container( //this
          color: Colors.black12,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset("assets/images/bridge.jpg",
                width: 80,height: 100,
              ),
              SizedBox(width: 10,),
              Container(
                width: 250,
                child: Column(
                  children: [
                    const Text("A bridge that does not seem to exist in India but it does!",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.more_horiz), label: const Text("View More"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
