import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  final List<String> imageUrls = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/238/200/300',
    'https://picsum.photos/id/239/200/300',
    'https://picsum.photos/id/240/200/300',
    'https://picsum.photos/id/241/200/300',
    'https://picsum.photos/id/242/200/300',
    'https://picsum.photos/id/243/200/300',
    'https://picsum.photos/id/244/200/300',
    'https://picsum.photos/id/245/200/300',
    'https://picsum.photos/id/238/200/300',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/248/200/300',
    'https://picsum.photos/id/249/200/300',
    'https://picsum.photos/id/250/200/300',
    'https://picsum.photos/id/251/200/300',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridViewWidget')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          final url = imageUrls[index];
          return Image.network(
            url,
            fit: BoxFit.cover,
          );
        }
      )
    );
  }

}