import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FlutterReduxAkhzarApp extends StatelessWidget {
  final Store<int> store;
  final String title;

  FlutterReduxAkhzarApp({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData.green(),
      title: title,
      home: new StoreProvider<int>(
        store: store,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  'test this Button Please:',
                ),

                new StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return new Text(
                      count,
                      style: Theme.of(context).textTheme.display1,
                    );
                  },
                )
              ],
            ),
          ),

          floatingActionButton: new StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(Actions.addup);
            },
            builder: (context, callback) {
              return new FloatingActionButton(
                onPressed: callback,
                tooltip: 'addup',
                child: new Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}


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
