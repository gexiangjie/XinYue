import 'package:flutter/material.dart';
import 'DemoItem.dart';

class PageV2EX extends StatefulWidget{

  @override
  _PageV2EXState createState() => _PageV2EXState();
}

class _PageV2EXState extends State<PageV2EX>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:  new ListView.builder(
        itemBuilder: (context, index) {
          return new DemoItem();
        },
        itemCount: 20,
      ),
    );
  }
}