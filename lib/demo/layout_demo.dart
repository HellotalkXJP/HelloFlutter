import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return IconBadge(Icons.pool);
    // return Column(
    //   children: <Widget>[
    //     IconBadge(Icons.pool, size: 64.0,)
    //   ],
    // );
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch, //交叉轴
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴
        // children: <Widget>[
        //   IconBadge(Icons.pool,),
        //   IconBadge(Icons.beach_access, size: 64.0,),
        //   IconBadge(Icons.airplanemode_active),
        // ],

        // 设置SizedBox大小
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                child: Container(
                  alignment: Alignment(0.0, -0.9), //设置对齐方式
                  width: 200.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0,),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
              Positioned(
                right: 70.0,
                top: 180.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
              Positioned(
                right: 90.0,
                bottom: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
              Positioned(
                right: 4.0,
                bottom: -4.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
              Positioned(
                right: 20.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  
  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}