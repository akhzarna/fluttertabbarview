import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tabbarview/myclasses/tabbarwithflux.dart';

enum Actions { addup }

int counterReducer(int state, dynamic action) {
  if (action == Actions.addup) {
    return state + 1;
  }

  return state;
}

void main() {
  final store = Store<int>(counterReducer, initialState: 0);
  runApp(new FlutterReduxAkhzarApp(
    title: 'Akhzar Flutter Redux',
    store: store,
  ));
}
