import 'package:flutter/material.dart';
import 'package:xinyue/gankio/PageGankIO.dart';
import 'package:xinyue/v2ex/PageV2EX.dart';
import 'package:xinyue/wanandroid/PageWanAndroid.dart';

import 'v2ex/DemoItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _onTapItem(int index) {
    setState(() {
      _selIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(title: new Text("鑫阅")),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onTapItem,
        children: <Widget>[PageV2EX(), PageGankIO(), PageWanAndroid()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("V2EX")),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text("GankIO")),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("WanAndroid")),
        ],
        currentIndex: _selIndex,
        onTap: (index) {
          setState(() {
            _selIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
