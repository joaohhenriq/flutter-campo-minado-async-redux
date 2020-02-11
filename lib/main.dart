import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:campo_minado_async_redux/connectors/home_page_connector.dart';

Store<int> store;

void main(){
  store = Store<int>(initialState: 0);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePageConnector(),
      ),
    );
  }
}


