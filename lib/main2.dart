import 'package:flutter/material.dart';
import 'package:wanandroid/ui/page/page_article.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ArticlePage(),
        appBar: AppBar(
          title: Text(
            "文章",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      title: "111",
    );
  }
}
