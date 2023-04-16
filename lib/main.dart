import 'package:flutter/material.dart';

import 'features/NewsArticlePage/NewsArticlePage.dart';
import 'features/NewsWidget/NewsWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Navigation Project'),
        '/secondNewsArticle': (context) => const NewsArticlePage(
            imageUrl: "https://picsum.photos/301",
            title: "Looking for dreams",
            content:
                "Looking for dreams can mean different things to different people. For some, it might refer to actively pursuing their aspirations and goals, while for others, it might involve exploring their subconscious through dream analysis and interpretation. Regardless of the interpretation, the act of looking for dreams requires a sense of curiosity, determination, and a willingness to explore the unknown. It's about embracing uncertainty, taking risks, and being open to new experiences. Looking for dreams can be both challenging and rewarding, and it often leads to personal growth and self-discovery. Ultimately, it's about finding meaning and purpose in life and striving towards a better future."),
      },
      title: 'Flutter P_8 Navigation',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: const MyHomePage(title: 'Flutter Navigation Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Last News",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          NewsWidget(
            imageUrl: "https://picsum.photos/300",
            title: "Find animals",
            info: "The greates thing on the planet",
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NewsArticlePage(
                        imageUrl: "https://picsum.photos/300",
                        title: "Find animals",
                        content:
                            "Finding animals can be an exciting and rewarding experience, whether you're a wildlife enthusiast, a nature lover, or simply someone who enjoys exploring the great outdoors. There are many ways to find animals in their natural habitats, from hiking and camping to wildlife safaris and nature walks. It's important to always respect the animals and their environment, and to follow guidelines and regulations for observing wildlife. Some popular destinations for animal sightings include national parks, nature reserves, and wildlife sanctuaries. With a little patience and a lot of luck, you may be able to spot some of the world's most incredible and elusive creatures.")),
              ),
            },
          ),
          const SizedBox(
            height: 10,
          ),
          NewsWidget(
              imageUrl: "https://picsum.photos/301",
              title: "Looking for dreams",
              info: "Dreams can be found in several places",
              onPressed: () => {
                    Navigator.pushNamed(context, '/secondNewsArticle'),
                  }),
          const SizedBox(
            height: 10,
          ),
          NewsWidget(
              imageUrl: "https://picsum.photos/302",
              title: "Games",
              info: "Different games improves thinking productivity",
              onPressed: () => {}),
          const SizedBox(
            height: 10,
          ),
          NewsWidget(
              imageUrl: "https://picsum.photos/304",
              title: "Never give up",
              info: "Never give up in developing this project",
              onPressed: () => {}),
        ],
      ),
    );
  }
}
