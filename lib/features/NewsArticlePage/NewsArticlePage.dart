import 'package:flutter/material.dart';

class NewsArticlePage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;

  const NewsArticlePage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                        Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),

            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () =>
                  {Navigator.pop(context, "Returned from news page")},
              child: const Text("Move back"),
            )
          ],
        ),
      ),
    );
  }
}
