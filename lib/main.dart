import 'package:flutter/material.dart';
import 'model/post.dart';

// void main() {
//   return runApp(App());
// }
// 但代码主题只有一行时，可以使用 => 返回
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context){
      return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('nihao'),
            elevation: 0.0,
          ),
          body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: _listItemBuilder,
          )
        );
    }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello world',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      )
    );
  }
} 