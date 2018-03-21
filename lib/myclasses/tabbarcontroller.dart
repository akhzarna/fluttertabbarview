import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    theme: new ThemeData(
    primaryColor: Colors.yellow,
    ),
      home: new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.directions_car)),
                new Tab(icon: new Icon(Icons.directions_transit)),
                new Tab(icon: new Icon(Icons.directions_bike)),
                new Tab(icon: new Icon(Icons.directions_transit)),
                new Tab(icon: new Icon(Icons.directions_bike)),
              ],
            ),
            title: new Text('Akhzar Assignment'),
          ),
          body: new TabBarView(
            children: [
              new Icon(Icons.directions_car),
              new Icon(Icons.directions_transit),
              new Icon(Icons.directions_bike),
              new Icon(Icons.directions_transit),
              new Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
