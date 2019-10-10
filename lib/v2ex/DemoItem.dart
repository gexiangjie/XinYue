import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class DemoItem extends StatefulWidget {
  @override
  _DemoItem createState() => new _DemoItem();
}

class _DemoItem extends State<DemoItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
          child: new FlatButton(
            onPressed: () {
              print("点我点我");
              Toast.show("鉴权失败！", context, duration: Toast.LENGTH_LONG,
                  gravity: Toast.CENTER);
            },
            child: new Row(
                new Image(),
                new Padding(
                  padding:
                  new EdgeInsets.only(left: 0, right: 20, top: 20, bottom: 20),
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text("这是一个列表",
                            style: TextStyle(color: Colors.red, fontSize: 14),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis),
                        alignment: Alignment.topLeft,
                        margin: new EdgeInsets.only(top: 0, bottom: 0),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _getBottomItem(Icons.star, "赵赵"),
                          _getBottomItem(Icons.subject, "皮皮"),
                          _getBottomItem(Icons.link, "葛葛")
                        ],
                      )
                    ],
                  ),
                )),
          )

      ),
    );
  }

  _getBottomItem(IconData icon, String text) {
    return new Expanded(
      flex: 1,
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),
            new Padding(padding: new EdgeInsets.only(left: 5.0)),
            new Text(
              text,
              style: new TextStyle(color: Colors.grey, fontSize: 14.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
