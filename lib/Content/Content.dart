import 'package:flutter/material.dart';
import 'Introduction.dart';

class Content extends StatefulWidget {
  const Content({Key key, this.visible}) : super(key: key);
  final bool visible;
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Container(
      child: Introduction(height: height),
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
    );
  }
}
