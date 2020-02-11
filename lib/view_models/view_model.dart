import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'package:campo_minado_async_redux/actions/increment_action.dart';

class ViewModel extends BaseModel<int> {
  ViewModel();

  int counter;
  VoidCallback onIncrement;

  ViewModel.build({
    @required this.counter,
    @required this.onIncrement,
  }) : super(equals: [counter]);

  @override
  BaseModel fromStore() {
    return ViewModel.build(
      counter: state,
      onIncrement: () => dispatch(
        IncrementAction(amount: 1),
      ),
    );
  }
}
