import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key key, this.visible}) : super(key: key);
  final bool visible;
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List allFlutterWidget = [
    {
      'name_zh': '简介',
      'name_en': 'Introduction',
      'type': 'Introduction',
    },
    {
      'name_zh': '总览',
      'name_en': 'Overview',
      'type': 'Overview',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: allFlutterWidget.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: Text(
              '${allFlutterWidget[index]['name_en']}  ${allFlutterWidget[index]['name_zh']}'),
          onTap: () {
            print('点击目录,切换页面');
            if (widget.visible) {
              // 关闭drawer，别关闭其他的
              Navigator.pop(context);
            }
          },
          hoverColor: Colors.blue[100],
        );
      },
    );
  }
}
