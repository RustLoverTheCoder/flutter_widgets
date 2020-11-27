// 简介页面

import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key key, this.height}) : super(key: key);
  final height;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: [
          new Expanded(
            child: (new Column(
              children: [
                new Container(
                  child: Text(
                    '简介',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                new Container(
                  child: Text(
                    'flutter widgets将flutter的所有的widgets做了一个总结，我还将继续更新新出的widgets。除了widgets，我还提供丰富的特效，组件。',
                    style: TextStyle(fontSize: 15),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  alignment: Alignment.centerLeft,
                ),
                new Container(
                  child: Text(
                    '通用',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  alignment: Alignment.centerLeft,
                ),
          
                new Wrap(
                  children: [
                    Card(
                        child: Column(
                      children: <Widget>[
                        new Container(
                          child: Text('123761278312853671253'),
                          height: 200,
                          width: 320,
                        ),
                      ],
                    )),
                    Card(
                        child: Column(
                      children: <Widget>[
                        new Container(
                          child: Text('123761278312853671253'),
                          height: 200,
                          width: 320,
                        ),
                      ],
                    )),
                    Card(
                        child: Column(
                      children: <Widget>[
                        new Container(
                          child: Text('123761278312853671253'),
                          height: 200,
                          width: 320,
                        ),
                      ],
                    )),
                  
                  ],
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
