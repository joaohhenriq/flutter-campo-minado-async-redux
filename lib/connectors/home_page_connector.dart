import 'package:campo_minado_async_redux/view_models/view_model.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:campo_minado_async_redux/pages/home_page.dart';

class HomePageConnector extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<int, ViewModel>(
      model: ViewModel(),
      builder: (context, vm){
        return HomePage(
          counter: vm.counter,
          onIncrement: vm.onIncrement,
        );
      },
    );
  }
}
