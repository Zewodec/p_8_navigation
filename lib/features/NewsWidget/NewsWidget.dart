import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String info;
  final VoidCallback onPressed;

  const NewsWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.info,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 15,
        ),
        // Left column with photo
        Image.network(
          imageUrl,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 16),

        // Right column with title, info, and button
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                info,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onPressed,
                child: const Text('Read more'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
