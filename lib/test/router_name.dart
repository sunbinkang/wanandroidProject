import 'package:flutter/material.dart';

///命名路由
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //注册路由表
        //默认首页的路由地址 “/”,如果路由表有“/”，就不能指定Home属性了
        "/": (_) {
          return HomePage();
        },
        "/page2": (context) {
          return Page2();
        },
      },
      title: "首页",
      // home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("121212"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/page2");
            },
            child: Text("打开第二个页面"),
          ),
        ],
      ),
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
              Navigator.pop(context);
          }),
    );
  }
}
