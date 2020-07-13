import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView inside ListView'),
          ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int blockIdx) {
            return new Column(
              children: [
                Padding(
                    child: Text("Header - https://fluttertutorial.in/"),
                    padding: EdgeInsets.all(8.0)),
                new GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  children: new List<Widget>.generate(4, (index) {
                    return new GridTile(
                      child: new Card(
                          color: Colors.blue.shade200,
                          child: new Center(
                            child: new Text('tile $index'),
                            )),
                      );
                  }),
                  ),
                Padding(
                    child: Text("Footer - https://fluttertutorial.in/"),
                    padding: EdgeInsets.all(8.0)),
              ],
              );
          },
          ),
        ),
      );
  }
}