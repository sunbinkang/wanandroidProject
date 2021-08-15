import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "首页",
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("121212"),
          ),
          body: Column(
            children: [
              RaisedButton(
                onPressed: () async {
                  Lance lance = await Navigator.push(context, PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                    return Page2();
                  }));
                  print('数据:' + lance.toString());
                },
                child: Text("打开第二个页面"),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: RaisedButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.pop(context, new Lance("name", 18));
          }),
    );
  }
}

class Lance {
  String? name;

  int? age;

  Lance(this.name, this.age);

  @override
  String toString() {
    return 'Lance{name: $name, age: $age}';
  }
}
