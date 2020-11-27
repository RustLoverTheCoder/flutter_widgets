import 'package:flutter/material.dart';
import 'package:flutter_widgets/Menu/Menu.dart';
import 'package:flutter_widgets/Content/Content.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    List<Widget> contentList = [];
    bool menuButtonVisible = true; //控制显示与不显示目录按钮
    final needWidth = 800; // 需要变换的长度
    if (width < needWidth) {
      menuButtonVisible = true;
      contentList = [
        new Expanded(
          child: Content(visible:menuButtonVisible),
        )
      ];
    } else {
      menuButtonVisible = false;
      contentList = [
        new Container(
          child: new Drawer(
            child: Menu(visible:menuButtonVisible),
          ),
          color: Colors.white,
          width: 200,
          height: height,
        ),
        new Expanded(
          child: Content(visible:menuButtonVisible),
        )
      ];
    }
    var _scaffoldkey;
    print('width is $width height is $height');
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('flutter widgets'),
        leading: menuButtonVisible ? null : Container(),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('搜索按钮');
            },
          )
        ],
      ),
      body: new Row(
        children: contentList,
      ),
      drawer: menuButtonVisible
          ? new Drawer(
              child: Menu(visible:menuButtonVisible),
            )
          : null,
    );
  }
}
