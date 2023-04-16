import 'package:flutter/material.dart';

import '../VideoPlayer/VideoPlayerPage.dart';
import 'NewsArticlePage.dart';

class NewsArticleMultiTypesPage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String content;

  const NewsArticleMultiTypesPage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  State<NewsArticleMultiTypesPage> createState() =>
      _NewsArticleMultiTypesPageState();
}

class _NewsArticleMultiTypesPageState extends State<NewsArticleMultiTypesPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const NewsArticlePage(
        imageUrl: "https://picsum.photos/304",
        title: "Never give up",
        content: "Never give up in developing this project"),
    const VideoPlayerPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}
