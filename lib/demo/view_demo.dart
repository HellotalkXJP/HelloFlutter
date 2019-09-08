import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewExtentDemo();
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200.0, // 每个item的大小
      crossAxisSpacing: 16.0, //间隔
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal, // 滑动方向 默认垂直
      children: _buildTitles(100),
    );
  }
}

// 网格视图
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, // 每行个数
      crossAxisSpacing: 16.0, //间隔
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
    );
  }
}

// 按需生成页面
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

// 页面视图相关属性
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false, //是否自动滑动
      // reverse: true,
      scrollDirection: Axis.vertical, // vertical垂直滚动  horizontal水平滚动 默认水平
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 1, // 默认页面
        keepPage: false, // 是否记住上一次页面的位置
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}