import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return RichText(
      text: TextSpan(
        text: 'nihao',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      fontSize: 18.0,
    );

  final String _author = '李白';
  final String _title = '将敬酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》—— $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3, // 设置最多显示文字行数
      overflow: TextOverflow.ellipsis, //多出的文字省略
    );
  }
}